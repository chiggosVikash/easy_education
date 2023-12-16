import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';

import 'master_setting_data_source.dart';

class MasterSettingFirebaseDataSourceImpl implements MasterSettingDataSource {
  final _firestore = FirebaseFirestore.instance;
  @override
  Future<bool> addSetting({required MasterSettingModel settingData}) async {
    await _firestore.collection("master_settings").add(settingData.toJson());
    return true;
  }

  @override
  Future<bool> deleteSetting({required String date}) async {
    final query = await _firestore
        .collection("master_settings")
        .where("date", isEqualTo: date)
        .limit(1)
        .get();
    if (query.docs.isNotEmpty) {
      final docId = query.docs.first.id;
      await _firestore.collection("master_settings").doc(docId).delete();
      return true;
    }
    throw Exception("Could not delete setting");
  }

  @override
  Future<List<MasterSettingModel>> getSettings({required String settingType}) {
    return _firestore
        .collection("master_settings")
        .where("type", isEqualTo: settingType)
        .get()
        .then((value) => value.docs
            .map((e) => MasterSettingModel.fromJson(e.data()))
            .toList());
  }
}
