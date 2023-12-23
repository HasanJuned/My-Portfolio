import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{
  static TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white
    );
  }

  static TextStyle montserratStyle({required Color color}){
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: 24
    );
  }

  static TextStyle headingStyles({double fontSize = 36, Color color = Colors.white}){
    return GoogleFonts.rubikMoonrocks(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      letterSpacing: 2,
      height: 3
    );
  }

  static TextStyle normalStyles(){
    return const TextStyle(
      color: Colors.white,
      //fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1.7
    );
  }

}