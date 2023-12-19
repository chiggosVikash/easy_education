
import 'package:easy_education/features/enquiry/data/models/enquiry_vs_admission_chat_data_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/utils/extensions/date_format_extension.dart';

import '../../data/models/enquiry_model.dart';

class EnquiryUseCase {
  final EnquiryRepo _enquiryRepository;

  EnquiryUseCase(this._enquiryRepository);

  Future<bool> addEnquiry(EnquiryModel enquiryModel) async {
      return await _enquiryRepository.addEnquiry(enquiryModel);

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
      return await _enquiryRepository.getEnquiry(id);
  }

  Future<List<MasterSettingModel>> getClassesOrBatch() async {
      return await _enquiryRepository.getClassesOrBatch();
  }

  Future<List<EnquiryModel>> getLimitedEnquiries({required int limit}) async {
      return await _enquiryRepository.getLimitedEnquiries(limit: limit);
  }

  Future<List<EnquiryModel>> getEnquiryLazy({required int limit,required int lastId}) async {
      return await _enquiryRepository.getEnquiryLazy(limit: limit, lastId: lastId);

  }

  Future<List<EnquiryModel>> getLast30DaysEnquiries() async {
      return await _enquiryRepository.getLast30DaysEnquiries();
  }



  // Future<List<EnquiryVsAdmissionChartDataModel>> getAdmissionDoneEnquiries(List<EnquiryModel> totalEnquiries) async {
  //   final List<EnquiryVsAdmissionChartDataModel> admissionDoneEnquiries;
  //
  //   for(var enquiry in totalEnquiries){
  //     if(enquiry.)
  //   }
  //}



  (Map<String,EnquiryVsAdmissionChartDataModel> admissionDone,
  Map<String,EnquiryVsAdmissionChartDataModel> admissionNotDone) enquiryVsAdmissionChartData(List<EnquiryModel> totalEnquiries) {

     Map<String,EnquiryVsAdmissionChartDataModel> admissionDoneEnquiries = {};
     Map<String,EnquiryVsAdmissionChartDataModel> admissionNotDoneEnquiries = {};
    for(var enquiry in totalEnquiries){

      /// if admission is done
      if(enquiry.isAdmissionDone == true){
        admissionDoneEnquiries = _enquiryFiltration(enquiryData: admissionDoneEnquiries, enquiry: enquiry);
      }else{
        /// admission is not done
        admissionNotDoneEnquiries = _enquiryFiltration(enquiryData: admissionNotDoneEnquiries, enquiry: enquiry);

      }

    }
     return (admissionDoneEnquiries,admissionNotDoneEnquiries);
  }

  Map<String,EnquiryVsAdmissionChartDataModel> _enquiryFiltration({
    required Map<String,EnquiryVsAdmissionChartDataModel> enquiryData,
    required EnquiryModel enquiry
  }){
    if(enquiryData[enquiry.createdDate.onlyDate] == null){
      enquiryData[enquiry.createdDate.onlyDate] = EnquiryVsAdmissionChartDataModel(date: enquiry.createdDate,
          count: 1);
    }else{
      enquiryData[enquiry.createdDate.onlyDate]?.count++;
    }

    return enquiryData;
  }


}