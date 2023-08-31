import 'package:flutter/material.dart';
import 'package:scapia_assignment/common/constants/image_constants.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class TravelHeaderWidget extends StatelessWidget {
  final String flightName;
  final String flightNumber;

  const TravelHeaderWidget({
    super.key,
    required,
    required this.flightName,
    required this.flightNumber,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.network(
                    ImageConstants.spicejet,
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  child: Text(
                    flightName,
                    style: TextStylesHelper.black_12_700,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Text(
              flightNumber,
              style: TextStylesHelper.black_12_700,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
