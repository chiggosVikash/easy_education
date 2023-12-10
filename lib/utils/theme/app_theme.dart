import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/utils/constants/constants.dart';

class AppTheme {
 AppTheme._();
  static final lightTheme = ThemeData(
     useMaterial3: true,
     textTheme: GoogleFonts.robotoSlabTextTheme(),
     colorScheme: ColorScheme.fromSeed(seedColor: Constants.primaryColor,brightness: Brightness.light ),
     appBarTheme: AppBarTheme(backgroundColor: Constants.primaryColor.withOpacity(.1))
  );

  static final darkTheme = ThemeData(
     useMaterial3: true,
     textTheme: GoogleFonts.robotoSlabTextTheme(),
     colorScheme: ColorScheme.fromSeed(seedColor: Constants.primaryColor,brightness: Brightness.dark ),
     appBarTheme: AppBarTheme(backgroundColor: Constants.primaryColor.withOpacity(.1))
  );
}