
import '../../../master_setting/data/models/master_setting_model.dart';
import '../../data/models/enquiry_model.dart';

abstract interface class EnquiryRepo{
  Future<bool> addEnquiry(EnquiryModel enquiryModel);
  Future<bool> deleteEnquiry(int id);
  Future<List<EnquiryModel>> getAllEnquiries();
  Future<EnquiryModel> getEnquiry(int id);
  Future<List<MasterSettingModel>> getClassesOrBatch();
  Future<List<EnquiryModel>> getLimitedEnquiries({required int limit});
  Future<List<EnquiryModel>> getEnquiryLazy({required int limit,required int lastId});
  Future<List<EnquiryModel>> getLast30DaysEnquiries();
}