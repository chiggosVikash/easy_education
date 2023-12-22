
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_education/features/admission/data/data_sources/admission_data_source.dart';
import 'package:easy_education/features/admission/data/models/admission_model.dart';


class AdmissionFirebaseDataSourceImpl implements AdmissionDataSource{
  final _firestore = FirebaseFirestore.instance;
  @override
  Future<bool> createAdmission({required AdmissionModel admissionModel}) async{
      await _firestore.collection("admissions")
          .doc(admissionModel.registrationNo)
          .set(admissionModel.toJson(),
          SetOptions(merge: true)
      );
      return true;
  }

  @override
  Future<bool> deleteAdmission({required String registrationNo}) async{
      await _firestore.collection("admissions")
          .doc(registrationNo)
          .delete();
      return true;
  }

  @override
  Future<AdmissionModel> getAdmission({String? registrationNo, String? formNo}) async{
    if(registrationNo == null && formNo == null){
      throw Exception("Either registrationNo or formNo must be provided");
    }
    final admissionJson = await _firestore.collection("admissions").where(
        Filter.or(
      Filter("registrationNo",isEqualTo: registrationNo),
      Filter("formNo",isEqualTo: formNo)
    )).limit(1).get();
    return AdmissionModel.fromJson(admissionJson.docs.first.data());

  }

  @override
  Future<List<AdmissionModel>> getAdmissions({required int limit, required String lastRegNo}) async{
    final admissionQuery = await _firestore.collection("admissions").orderBy("registrationNo",descending:true)
        .startAfter([lastRegNo]).limit(limit).get();
    return admissionQuery.docs.map((e) => AdmissionModel.fromJson(e.data())).toList();
  }

  @override
  Future<List<AdmissionModel>> getLimitedAdmissions({required int limit}) async{
    final admissionQuery = await _firestore.collection("admissions").orderBy("registrationNo",descending:true)
        .limit(limit).get();
    return admissionQuery.docs.map((e) => AdmissionModel.fromJson(e.data())).toList();
  }

  @override
  Future<AdmissionModel> updateAdmission({required AdmissionModel admissionModel}) async{
    await _firestore.collection("admissions")
        .doc(admissionModel.registrationNo)
        .set(admissionModel.toJson(),
        SetOptions(merge: true)
    );
    return admissionModel;
  }

}