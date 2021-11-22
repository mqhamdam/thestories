import 'package:flutter/material.dart';

ThemeData ligthTheme() {
  return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
      ),
      //primaryColor: Color.fromRGBO(64, 63, 63, 1),
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: Colors.white,
        primaryColorDark: const Color.fromRGBO(64, 63, 63, 1),
        errorColor: Colors.red,
        // accentColor: Color.fromRGBO(66, 122, 91, 1),
        primarySwatch: Colors.indigo,
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.transparent),);
}
