import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//colors
var accent = const Color(0xFF18A5FD);
var accentLight = const Color(0xFFDCEAF2);
var heading = const Color(0xFF0F1641);
var text = const Color(0xFFAAAAAA);
var icon = const Color(0xFFB8BCCB);
var background = const Color(0xFFF8FAFB);
var white = const Color(0xFFFFFFFF);
var black = const Color(0xFF000000);

//TextStyles
TextStyle heading1 = GoogleFonts.poppins(fontWeight: FontWeight.w600,color: heading,fontSize: 20);
TextStyle heading2 = GoogleFonts.poppins(fontWeight: FontWeight.w600,color: heading,fontSize: 18);
TextStyle heading3 = GoogleFonts.poppins(fontWeight: FontWeight.w600,color: heading,fontSize: 16);
TextStyle heading4 = GoogleFonts.poppins(fontWeight: FontWeight.w600,color: heading,fontSize: 14);

TextStyle pBold =  GoogleFonts.poppins(
    fontSize: 18,fontWeight: FontWeight.w700,color: white);
TextStyle p1 = GoogleFonts.poppins(color: text, fontSize: 14, fontWeight: FontWeight.w400);
TextStyle p2 = GoogleFonts.poppins(color: text, fontSize: 12,fontWeight: FontWeight.w400);
TextStyle p3 = GoogleFonts.poppins(color: text, fontSize: 10,fontWeight: FontWeight.w400);
TextStyle p4 = GoogleFonts.poppins(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500);

TextStyle pPrice = GoogleFonts.poppins(
    fontSize: 16,fontWeight: FontWeight.w600,color: white);
TextStyle pLocation = GoogleFonts.poppins(
  fontSize: 10,fontWeight: FontWeight.w400,color: white);

TextStyle button = GoogleFonts.poppins(fontWeight: FontWeight.w600,color: white,fontSize: 20);

//Gaps
var large = 50.0;
var medium = 30.0;
var small = 16.0;
var xsmall = 10.0;