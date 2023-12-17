
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

abstract interface class EnquiryDataSource {
  Future<bool> addEnquiry(EnquiryModel enquiryModel);
  Future<bool> deleteEnquiry(int id);
  Future<List<EnquiryModel>> getAllEnquiries();
  Future<EnquiryModel> getEnquiry(int id);
  Future<List<MasterSettingModel>> getClassesOrBatch();
}