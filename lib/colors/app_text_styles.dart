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
      fontWeight: FontWeight.w800,
      fontSize: 24
    );
  }

  static TextStyle headingStyles(){
    return GoogleFonts.rubikMoonrocks(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 36,
      letterSpacing: 2,
      height: 3
    );
  }

  static TextStyle normalStyles(){
    return GoogleFonts.signikaNegative(
      color: Colors.white,
      //fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1
    );
  }

}