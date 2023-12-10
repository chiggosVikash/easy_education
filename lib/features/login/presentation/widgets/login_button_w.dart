import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonW extends ConsumerWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  const LoginButtonW({super.key,required this.height,required this.width,required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ,width: width ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            context.theme.primary.withOpacity(.4),
            context.theme.primary.withOpacity(.6),
            context.theme.surfaceTint.withOpacity(.9),
          ])
        ),
        child: LayoutBuilder(
          builder: (context,constraints) {
            return Center(child: Text("Login",style: GoogleFonts.robotoSlab(
              fontSize: ((constraints.biggest.height+constraints.biggest.width)*context.aspectRatio)*.18,
              color: context.theme.surfaceVariant),));
          }
        ),),
    );
  }
}