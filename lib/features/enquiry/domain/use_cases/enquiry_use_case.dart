
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
    try {
      return await _enquiryRepository.getAllEnquiries();
    } catch (e) {
      rethrow;
    }
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
}