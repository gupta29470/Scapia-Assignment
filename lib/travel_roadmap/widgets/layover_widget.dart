import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class LayoverWidget extends StatelessWidget {
  final String layoverTime;

  const LayoverWidget({
    super.key,
    required this.layoverTime,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Row(
        children: [
          const DottedLine(
            dashColor: AppColorsHelper.vivaldiRed,
            lineLength: 100,
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColorsHelper.salmonUpstream,
            ),
            child: Center(
              child: Text(
                layoverTime,
                style: TextStylesHelper.black_12_700,
              ),
            ),
          ),
          const DottedLine(
            dashColor: AppColorsHelper.vivaldiRed,
            lineLength: 100,
          ),
        ],
      ),
    );
  }
}
