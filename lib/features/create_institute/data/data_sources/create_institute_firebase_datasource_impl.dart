
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_education/features/create_institute/data/data_sources/create_institute_data_source.dart';
import 'package:easy_education/features/create_institute/data/models/institute_model.dart';

class CreateInstituteFirebaseDataSourceImpl
    implements CreateInstituteDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  CreateInstituteFirebaseDataSourceImpl();

  @override
  Future<bool> createInstitute({required InstituteModel instituteModel}) async{
    try{
      if(await isExistingInstitute(instituteId: instituteModel.email)){
        throw Exception('Institute already exists');
      }

      final instituteCollection = firebaseFirestore.collection('institutes');
      await instituteCollection.doc(instituteModel.email).set(instituteModel.toJson());
      return true;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> deleteInstitute({required String instituteId}) async{
    try{
      await firebaseFirestore.collection('institutes').doc(instituteId).delete();
      return true;
    }catch(e){
      rethrow;
    }

  }

  @override
  Future<InstituteModel> getInstitute({required String instituteId}) async{
    try{
      final institute = await firebaseFirestore.collection('institutes').doc(instituteId)
          .get(const GetOptions(source: Source.serverAndCache));
      if(institute.exists == false){
        throw Exception('Institute does not exist');
      }
      return InstituteModel.fromJson(institute.data()!);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> updateInstitute({required InstituteModel instituteModel}) async{
    try{
      await firebaseFirestore.collection('institutes')
          .doc(instituteModel.email).update(instituteModel.toJson());
      return true;
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> isExistingInstitute({required String instituteId}) async{
    try{
      final institute = await firebaseFirestore.collection('institutes')
          .doc(instituteId).get(const GetOptions(source: Source.server));
      return institute.exists;
    }catch(e){
      rethrow;
    }
  }


}