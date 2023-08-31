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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              "Layover in",
              style: TextStylesHelper.vivaldiRed_12_700,
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: Text(
              airportName,
              style: TextStylesHelper.vivaldiRed_12_700,
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: Text(
              "($airportCode)",
              style: TextStylesHelper.vivaldiRed_12_700,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
