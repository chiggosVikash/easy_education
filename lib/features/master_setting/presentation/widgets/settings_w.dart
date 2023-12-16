import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/setting_model.dart';

class SettingsTile extends ConsumerWidget {
  final SettingModel setting;
  final Animation<double> opacity;
  final Animation<double> scale;
  const SettingsTile({super.key,required this.setting,required this.opacity,required this.scale});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FadeTransition(
      opacity: opacity,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: context.width * .02,
            vertical: context.height * .013),
        padding: EdgeInsets.symmetric(
          // horizontal: context.width * .01,
            vertical: context.height * .004),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.surfaceVariant.withOpacity(.4)),
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScaleTransition(
                scale:scale ,
                child: Container(
                  height: context.height * .05,
                  width: context.width * .15,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceTint
                                .withOpacity(.5),
                            blurRadius: 3,
                            offset: const Offset(3, -2))
                      ],
                      shape: BoxShape.circle,
                      color: context.theme.background
                  ),
                  child: Center(child:setting.icon),
                ),
              ),
              SizedBox(
                width: constraints.biggest.width * .75,
                child: Text(
                  setting.name,
                  style: GoogleFonts.radley(
                      fontSize:
                      ((context.height + context.width) *
                          context.aspectRatio) *
                          .028),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: constraints.biggest.width * .02),
                child: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: context.theme.surfaceTint,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
