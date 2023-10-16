import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends Text {
  MyText({
    required final String text,
    final double fontSize = 18,
    final Color color = Colors.black,
    final Color? backgroundColor,
    final FontWeight fontWeight = FontWeight.normal,
    super.key,
  }) : super(
          text,
          style: GoogleFonts.poppins(
            fontSize: fontSize,
            color: color,
            backgroundColor: backgroundColor,
            fontWeight: fontWeight,
          ),
        );
}
