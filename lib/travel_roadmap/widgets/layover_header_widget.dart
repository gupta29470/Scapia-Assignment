import 'package:flutter/material.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class LayoverHeaderWidget extends StatelessWidget {
  final String airportName;
  final String airportCode;

  const LayoverHeaderWidget({
    super.key,
    required this.airportCode,
    required this.airportName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Text(
        "Layover in\n$airportName\n($airportCode)",
        style: TextStylesHelper.vivaldiRed_12_700,
        textAlign: TextAlign.center,
      ),
    );
  }
}
