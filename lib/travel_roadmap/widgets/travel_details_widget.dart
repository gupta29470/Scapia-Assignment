import 'package:flutter/material.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/travel_detail_widget.dart';

class TravelDetailsWidget extends StatelessWidget {
  final List<SingleTravelData?> travelData;

  const TravelDetailsWidget({super.key, required this.travelData});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 32, left: 16),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: travelData.length,
        itemBuilder: (_, index) {
          SingleTravelData? currentTravelData = travelData[index];
          if (currentTravelData != null) {
            return TravelDetailWidget(
              travelData: currentTravelData,
              index: index,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
