import 'package:flutter/material.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';

class TravelDetailWidget extends StatelessWidget {
  final SingleTravelData travelData;
  final int index;

  const TravelDetailWidget({
    super.key,
    required this.travelData,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (travelData.isLayover == true) {
      return const SizedBox(width: 195);
    }
    return SizedBox(
      width: 365,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  travelData.departureTime ?? "",
                  style: TextStylesHelper.black_12_700,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  travelData.departureDate ?? "",
                  style: TextStylesHelper.black_12_400,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "${travelData.departureAirport} (${travelData.departureAirportCode})\n${travelData.departureTerminal}",
                style: TextStylesHelper.black_12_700,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  travelData.arrivalTime ?? "",
                  style: TextStylesHelper.black_12_700,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  travelData.arrivalDate ?? "",
                  style: TextStylesHelper.black_12_400,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "${travelData.arrivalAirport} (${travelData.arrivalAirportCode})\n${travelData.arrivalTerminal}",
                style: TextStylesHelper.black_12_700,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
