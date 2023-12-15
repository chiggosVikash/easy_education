import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.width*.03,vertical: context.height*.01),
      child: Text(text,style: GoogleFonts.dmSans(
        fontSize:18
      ),),
    );
  }
}