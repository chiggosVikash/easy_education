
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';

import 'enquiry_data_source.dart';

class EnquiryFirebaseDataSourceImpl implements EnquiryDataSource{
  final _firestore = FirebaseFirestore.instance;
  @override
  Future<bool> addEnquiry(EnquiryModel enquiryModel) async{
    try{
      await _firestore.collection("enquiries")
          .doc("${enquiryModel.id}")
            .set(enquiryModel.toJson(),
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
      final enquiries = snapshot.docs.map((e) => EnquiryModel.fromJson(e.data())).toList();
      return enquiries;
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
      final enquiry = EnquiryModel.fromJson(snapshot.data()!);
      return enquiry;
    }catch(e){
      rethrow;
    }
  }
  
}