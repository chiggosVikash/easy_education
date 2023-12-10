import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogoDesignW extends ConsumerWidget {
  const LogoDesignW({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(children: [
       Positioned(right: .1,
            child: Container(height: context.height*.25,width: context.width*.9,
             transform: Matrix4.skewY(.65),
             transformAlignment: Alignment.topRight,
             decoration: BoxDecoration(color: context.theme.primary.withOpacity(.4)),),
          ),
          Positioned(right: .1,
            child: Container(height: context.height*.23,width: context.width*.9,
             transform: Matrix4.skewY(.65),
             transformAlignment: Alignment.topRight,
             decoration: BoxDecoration(color: context.theme.secondaryContainer),),
          ),
          Positioned(
            right: (context.width-(context.width*.25))*.2,
            top: (context.height-(context.height*.15))*.07,
            child: Image.asset("assets/chiggoslogo.png",width: context.width*.25,height: context.height*.15,))
    
    ],);
  }
}