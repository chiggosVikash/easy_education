
import 'package:easy_education/features/enquiry/data/data_sources/enquiry_data_source.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

class EnquiryRepoImpl implements EnquiryRepo{
  final FirebaseLazyFetch _dataSource;
  EnquiryRepoImpl(this._dataSource);
  @override
  Future<bool> addEnquiry(EnquiryModel enquiryModel) {
    return _dataSource.addEnquiry(enquiryModel);
  }

  @override
  Future<bool> deleteEnquiry(int id) {
    return _dataSource.deleteEnquiry(id);
  }

  @override
  Future<List<EnquiryModel>> getAllEnquiries() {
    return _dataSource.getAllEnquiries();
  }

  @override
  Future<EnquiryModel> getEnquiry(int id) {
    return _dataSource.getEnquiry(id);
  }

  @override
  Future<List<MasterSettingModel>> getClassesOrBatch() {
    return _dataSource.getClassesOrBatch();
  }

  @override
  Future<List<EnquiryModel>> getEnquiryLazy({required int limit, required int lastId}) {
    return _dataSource.getEnquiryLazy(limit: limit, lastId: lastId);
  }

  @override
  Future<List<EnquiryModel>> getLimitedEnquiries({required int limit}) {
    return _dataSource.getLimitedEnquiries(limit: limit);
  }

  @override
  Future<List<EnquiryModel>> getLast30DaysEnquiries() {
    return _dataSource.getLast30DaysEnquiries();
  }

}