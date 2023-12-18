
import 'package:easy_education/features/enquiry/data/models/enquiry_vs_admission_chat_data_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

import '../../data/models/enquiry_model.dart';

class EnquiryUseCase {
  final EnquiryRepo _enquiryRepository;

  EnquiryUseCase(this._enquiryRepository);

  Future<bool> addEnquiry(EnquiryModel enquiryModel) async {
    try {
      return await _enquiryRepository.addEnquiry(enquiryModel);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> deleteEnquiry(int id) async {
    try {
      return await _enquiryRepository.deleteEnquiry(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<EnquiryModel>> getAllEnquiries() async {
      return await _enquiryRepository.getAllEnquiries();
  }

  Future<EnquiryModel> getEnquiry(int id) async {
    try {
      return await _enquiryRepository.getEnquiry(id);
    } catch (e) {
      rethrow;
    }
  }

 Future<List<MasterSettingModel>> getClassesOrBatch() async {
      return await _enquiryRepository.getClassesOrBatch();
  }

  Future<List<EnquiryVsAdmissionChartDataModel>> getAdmissionDoneEnquiries(List<EnquiryModel> totalEnquiries) async {
    final List<EnquiryVsAdmissionChartDataModel> admissionDoneEnquiries;

    for(var enquiry in totalEnquiries){
      if(enquiry.)
    }


  }

  Future<List<EnquiryModel>> getAdmissionNotDoneEnquiries(List<EnquiryModel> totalEnquiries) async {
      return totalEnquiries.where((element) => element.isAdmissionDone == false).toList();
  }
}