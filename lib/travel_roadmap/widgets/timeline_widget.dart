import 'package:flutter/material.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/layover_widget.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/travel_timeline_widget.dart';

class TimelineWidget extends StatelessWidget {
  final List<SingleTravelData?> travelData;

  const TimelineWidget({
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
                return LayoverWidget(
                  layoverTime: currentTravelData.layoverTime ?? "",
                );
              }
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 36)
                    : const EdgeInsets.all(0),
                child: TravelTimelineWidget(
                  totalTime: currentTravelData.totalTime ?? "",
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
