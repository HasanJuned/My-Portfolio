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

  static TextStyle montserratStyle({required Color color, double fontSize = 24}){
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: fontSize
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

  static TextStyle normalStyles({Color color = Colors.white}){
    return TextStyle(
      color: color,
      //fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1.7
    );
  }

  static TextStyle comfortaaStyle(){
    return GoogleFonts.comforter(
      fontSize: 10, fontWeight: FontWeight.w800, color: Colors.grey
    );
  }

}