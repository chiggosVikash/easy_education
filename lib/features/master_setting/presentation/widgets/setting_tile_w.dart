import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingTile extends ConsumerWidget {
  final MasterSettingModel _settingData;
  final int _index;
  const SettingTile(
      {super.key, required MasterSettingModel settingData, required int index})
      : _settingData = settingData,
        _index = index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: context.width,
      margin: EdgeInsets.only(
        left: _index % 2 == 0 ? context.width * .08 : context.width * .02,
        right: context.height * .01,
        top: context.height * .01,
        bottom: context.height * .01,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: context.width * .01,
        vertical: context.height * .008,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.theme.background,
          boxShadow: [
            BoxShadow(
              offset: const Offset(-2, 2),
              color: Colors.teal.shade100,
            )
          ]),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Container(
              height: context.height * .045,
              width: constraints.biggest.width * .15,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: context.theme.surfaceTint.withOpacity(.3),
                      width: 3),
                  shape: BoxShape.circle,
                  color: context.theme.background),
              child: Center(
                  child: Text(
                "${_index + 1}",
                style: GoogleFonts.openSans(),
              )),
            ),
            SizedBox(
              width: constraints.biggest.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _settingData.name,
                    style: GoogleFonts.alegreyaSansSc(
                        fontSize:
                            ((context.height + constraints.biggest.width) *
                                    context.aspectRatio) *
                                .03),
                  ),
                  _settingData.classOrBatch_ != null && _settingData.classOrBatch_!.isNotEmpty
                      ? Text(
                          "Section: ${_settingData.classOrBatch_}",
                          style: GoogleFonts.ptSans(
                              color: context.theme.outline,
                              fontSize: ((context.height +
                                          constraints.biggest.width) *
                                      context.aspectRatio) *
                                  .024),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
