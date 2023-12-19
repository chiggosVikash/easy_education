
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/master_setting/data/data_sources/master_setting_data_source.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import '../../../master_setting/data/data_sources/master_settings_firebase_data_source_impl.dart';
import 'enquiry_data_source.dart';

class EnquiryFirebaseDataSourceImpl implements FirebaseLazyFetch{
  final _firestore = FirebaseFirestore.instance;
  final MasterSettingDataSource _masterSettingDataSource = MasterSettingFirebaseDataSourceImpl();
  @override
  Future<bool> addEnquiry(EnquiryModel enquiryModel) async{
    try{
       var json = enquiryModel.toJson();
       json["studentDetails"] = enquiryModel.studentDetails.toJson();
        json["contactDetails"] = enquiryModel.contactDetails.toJson();
      await _firestore.collection("enquiries")
          .doc(enquiryModel.id.toString())
            .set(json,
              SetOptions(merge: true),
      );
      return true;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> deleteEnquiry(int id) async{
    try{
      await _firestore.collection("enquiries")
          .doc("$id")
            .delete();
      return true;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<List<EnquiryModel>> getAllEnquiries() async{
    try{
      final snapshot = await _firestore.collection("enquiries").get();
      return snapshot.docs.map((e) => EnquiryModel.fromJson(e.data())).toList();
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<EnquiryModel> getEnquiry(int id) async{
    try{
      final snapshot = await _firestore.collection("enquiries").doc("$id").get();
      if(!snapshot.exists || snapshot.data() == null){
        throw Exception("Enquiry with id $id does not exist");
      }
      return EnquiryModel.fromJson(snapshot.data()!);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<List<MasterSettingModel>> getClassesOrBatch() async{
    try{
      return await _masterSettingDataSource.getSettings(settingType: "Batch");
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<List<EnquiryModel>> getEnquiryLazy({required int limit,required int lastId}) async{
    try{
      final snapshot = await _firestore.collection("enquiries")
          .orderBy("id")
          .startAfter([lastId])
          .limit(limit).get();

      return snapshot.docs.map((e) => EnquiryModel.fromJson(e.data())).toList();
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<List<EnquiryModel>> getLimitedEnquiries({required int limit}) async{
    try{
      final snapshot = await _firestore.collection("enquiries").orderBy("id").limit(limit).get();
      return snapshot.docs.map((e) => EnquiryModel.fromJson(e.data())).toList();
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<List<EnquiryModel>> getLast30DaysEnquiries() async{
    try{
      final snapshot = await _firestore.collection("enquiries")
          .where("id",isGreaterThanOrEqualTo: DateTime.now()
          .subtract(const Duration(days: 30)).millisecondsSinceEpoch)
          .get();
      return snapshot.docs.map((e) => EnquiryModel.fromJson(e.data())).toList();
    }catch(e){
      rethrow;
    }
  }
  
}