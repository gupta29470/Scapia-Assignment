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
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8, left: 28),
                        child: Text(
                          travelData.departureTime ?? "",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8, left: 4),
                        child: Text(
                          travelData.departureDate ?? "",
                          style: TextStylesHelper.black_12_400,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 4,
                        ),
                        child: Text(
                          "${travelData.departureAirport} (${travelData.departureAirportCode})",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 4,
                        ),
                        child: Text(
                          "${travelData.departureTerminal}",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8, right: 40),
                        child: Text(
                          travelData.arrivalTime ?? "",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          travelData.arrivalDate ?? "",
                          style: TextStylesHelper.black_12_400,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${travelData.arrivalAirport} (${travelData.arrivalAirportCode})",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${travelData.arrivalTerminal}",
                          style: TextStylesHelper.black_12_700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
