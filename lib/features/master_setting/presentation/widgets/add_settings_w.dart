import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/features/master_setting/presentation/providers/save_master_setting_p.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/dialogues/saving_dialogue.dart';
import '../../../../utils/dialogues/successful_dialogue.dart';
import '../../../../utils/enums/setting_enum.dart';
import '../../../../widgets/create_button.dart';
import '../../../../widgets/failed_dialogue.dart';
import '../../data/models/setting_model.dart';
import '../providers/get_settings_provider_g.dart';

class AddSettings extends ConsumerStatefulWidget {
  final SettingModel _setting;
  const AddSettings({super.key,required SettingModel setting}) : _setting = setting;

  @override
  ConsumerState<AddSettings> createState() => _AddSettingsState();
}

class _AddSettingsState extends ConsumerState<AddSettings> {

  final TextEditingController _setting1Controller = TextEditingController();
  final TextEditingController _setting2Controller = TextEditingController();

  @override
  void dispose() {
    _setting1Controller.dispose();
    _setting2Controller.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    return Container(width: context.width,
      padding: EdgeInsets.symmetric(horizontal: context.width*.04,vertical: context.height*.01),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Center(child: SizedBox(width: context.width*.1,child: const Divider(thickness: 3,),)),
            SizedBox(height: context.width*.06,),
            Text("Add your ${widget._setting.name} here: ",style: GoogleFonts.ptSerif(
              fontSize: ((constraints.biggest.width+constraints.biggest.height)*context.aspectRatio)*.027
            ),),
            SizedBox(height: context.height*.04,),
            TextFormField(
              controller: _setting1Controller,
              decoration: InputDecoration(
                isDense: true,
                fillColor: context.theme.secondaryContainer.withOpacity(.5),filled: true,
                border: InputBorder.none,labelText: "Enter ${widget._setting.name}",
                  suffixIcon: widget._setting.icon
              ),
            ),
            SizedBox(height: context.height*.04,),
            widget._setting.settingEnum == SettingEnum.batch ? TextFormField(
              controller: _setting2Controller,
              decoration: InputDecoration(
                  isDense: true,
                  fillColor: context.theme.secondaryContainer.withOpacity(.5),filled: true,
                  border: InputBorder.none,labelText: "Enter Section",suffixIcon: widget._setting.icon
              ),
            ) : const SizedBox(),

            SizedBox(height: context.height*.1,),

            Center(child: CreateButton(onPressed: (){
              _savingDialogue();
              ref.read(saveMasterSettingProvider.notifier).addSetting(
                settingDataModel:MasterSettingModel(name:  _setting1Controller.text.trim(),
                    type: widget._setting.name,
                    classOrBatch_: widget._setting.settingEnum == SettingEnum.batch ? _setting2Controller.text.trim() : null,
                    date: DateTime.now().toString(),

                ),
              );
            }, text: "Save"))




          ],);
        }
      ),);
  }

  void _clearControllers(){
    _setting2Controller.text = "";
    _setting1Controller.text = "";
  }

  void _savingDialogue(){
    showDialog(context: context, builder: (context){
      return Consumer(builder: (context,ref,child){
        final state = ref.watch(saveMasterSettingProvider);
        return state.when(data: (_){
          return  SuccessfulDialogue(content: "Setting created successfully",
              buttonText: "Ok",
              onPressed: (){
            _clearControllers();
            ref.read(getSettingsProvider.notifier).refreshSettings(widget._setting.name);
            Navigator.pop(context);
          });
        }, error: (e,st){
          return FailedDialogue(cancelButton: (){
            Navigator.pop(context);
          }, tryAgainButton: (){
            Navigator.pop(context);
          }, message: "Filed to create setting please try again",);
        }, loading: ()=> const SavingDialogue(title: "Saving..."));
      });
    });
  }
}
