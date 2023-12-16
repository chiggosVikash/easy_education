import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/features/master_setting/presentation/widgets/setting_tile_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/delete_master_setting_p.dart';

class DeleteSettingWidget extends ConsumerWidget {
  final MasterSettingModel _settingData;
  const DeleteSettingWidget({super.key,required MasterSettingModel settingData}) : _settingData = settingData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: context.height*.2,
      width: context.width,
      padding: EdgeInsets.symmetric(horizontal: context.width*.04,vertical: context.height*.01),
      child: Column(children: [

        Consumer(builder: (context, ref, child) {
          final resultRawData = ref.watch(deleteMasterSettingProvider);
          if(resultRawData.value == true){
            return const SizedBox();
          }
          return SettingTile(settingData: _settingData, index: 1);
          },
        ),


        Consumer(builder: (context, ref, child) {
          final resultRawData = ref.watch(deleteMasterSettingProvider);
          return resultRawData.when(data: (status){

            // if(status){
            //   _showDeletedSnackBar(context: context);
            // }
            if(status == true){
              return const SizedBox();
            }
            return FilledButton.tonal(
              // style: ButtonStyle(backgroundColor: Colors.red),
                onPressed: (){
                  ref.read(deleteMasterSettingProvider.notifier).deleteMasterSetting(date: _settingData.date, settingType: _settingData.type);
                }, child: const Text("Delete"));
          }, error: (e,st)=>Center(child: Text("Error $e"),),
              loading: ()=> const Center(child: RepaintBoundary(
                  child: CircularProgressIndicator()),)
          );
          },)
      ],),
    );
  }
  _showDeletedSnackBar({required BuildContext context}){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Deleted Successfully")));
  }
}
