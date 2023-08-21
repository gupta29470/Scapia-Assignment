import 'package:flutter/material.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';

class DecorationsHelper {
  static BoxDecoration get travelRoadmapDecor => BoxDecoration(
        color: AppColorsHelper.cornSilk,
        border: Border.all(
          color: AppColorsHelper.nouveauRiche,
        ),
        borderRadius: BorderRadius.circular(24),
      );
}
