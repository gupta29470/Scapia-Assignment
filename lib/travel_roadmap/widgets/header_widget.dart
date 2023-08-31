import 'package:flutter/material.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/layover_header_widget.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/travel_header_widget.dart';

class HeaderWidget extends StatelessWidget {
  final List<SingleTravelData?> travelData;

  const HeaderWidget({
    super.key,
    required this.travelData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, left: 16),
      child: Row(
        children: List.generate(
          travelData.length,
          (index) {
            SingleTravelData? currentTravelData = travelData[index];

            if (currentTravelData != null) {
              if (currentTravelData.isLayover == true) {
                return LayoverHeaderWidget(
                  airportCode: currentTravelData.layoverAirportCode ?? "",
                  airportName: currentTravelData.layoverAirport ?? "",
                );
              }
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 36)
                    : const EdgeInsets.all(0),
                child: TravelHeaderWidget(
                  flightName: currentTravelData.flightName ?? "",
                  flightNumber: currentTravelData.flightNumber ?? "",
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
