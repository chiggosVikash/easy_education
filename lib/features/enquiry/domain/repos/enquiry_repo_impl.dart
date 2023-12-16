
import 'package:easy_education/features/enquiry/data/data_sources/enquiry_data_source.dart';
import 'package:easy_education/features/enquiry/data/models/enquiry_model.dart';
import 'package:easy_education/features/enquiry/domain/repos/enquiry_repo.dart';

class EnquiryRepoImpl implements EnquiryRepo{
  final EnquiryDataSource _dataSource;
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

}