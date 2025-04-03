import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double fuenteDiminuta = 15;
double fuenteChica = 20;
double fuenteMediana = 22;
double fuenteGrande = 30;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semibold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight fullBlack = FontWeight.w500;

TextStyle navbarTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(fontWeight: medium, fontSize: fontSize ?? 17, color: colorete ?? Colors.black);
}

TextStyle buttonTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(fontWeight: semibold, fontSize: fontSize ?? 22, color: colorete ?? Colors.black);
}

TextStyle h1TextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: bold,
    fontSize: fontSize ?? fuenteGrande,
    color: colorete ?? Colors.black,
  );
}

TextStyle bodyTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: regular,
    fontSize: fontSize ?? fuenteChica,
    height: 31 / (fontSize ?? fuenteChica),
    color: colorete ?? Colors.black,
  );
}

TextStyle h2TextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: semibold,
    fontSize: fontSize ?? fuenteChica,
    color: colorete ?? Colors.black,
  );
}

TextStyle h3TextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: medium,
    fontSize: fontSize ?? fuenteChica,
    color: colorete ?? Colors.black,
  );
}

TextStyle h4TextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: regular,
    fontSize: fontSize ?? 19,
    height: 29 / (fontSize ?? 19),
    color: colorete ?? Colors.black,
  );
}

TextStyle h5TextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: regular,
    fontSize: fontSize ?? fuenteDiminuta,
    color: colorete ?? Colors.black,
  );
}

TextStyle inputTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: regular,
    fontSize: fontSize ?? fuenteDiminuta,
    color: colorete ?? Colors.black,
  );
}

TextStyle labelTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: regular,
    fontSize: fontSize ?? fuenteDiminuta,
    color: colorete ?? Colors.black,
  );
}

TextStyle disciplinasTextStyle({Color? colorete, double? fontSize}) {
  return GoogleFonts.poppins(
    fontWeight: fullBlack,
    fontSize: fontSize ?? 35,
    color: colorete ?? Colors.black,
  );
}
