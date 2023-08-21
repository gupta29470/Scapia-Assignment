import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';

class TextStylesHelper {
  static TextStyle black_12_400 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColorsHelper.black,
  );

  static TextStyle black_16_600 = black_12_400.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle cloudCover_12_700 = black_12_400.copyWith(
    color: AppColorsHelper.cloudCover,
    fontWeight: FontWeight.w700,
  );

  static TextStyle black_12_700 = black_12_400.copyWith(
    fontWeight: FontWeight.w700,
  );

  static TextStyle vivaldiRed_12_700 = black_12_400.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColorsHelper.vivaldiRed,
  );
}
