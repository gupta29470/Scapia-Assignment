import 'package:flutter/material.dart';
import 'package:scapia_assignment/common/widgets/checkpoint_circle_widget.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class TravelTimelineWidget extends StatelessWidget {
  final String totalTime;

  const TravelTimelineWidget({
    super.key,
    required this.totalTime,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Row(
        children: [
          const CheckpointCircleWidget(
            backgroundColor: AppColorsHelper.salmonUpstream,
            radius: 10,
            child: CheckpointCircleWidget(
              backgroundColor: AppColorsHelper.vivaldiRed,
              radius: 6,
            ),
          ),
          const SizedBox(
            height: 2,
            width: 80,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColorsHelper.mayaBlue,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColorsHelper.veilingWaterfalls,
            ),
            child: Center(
              child: Text(
                totalTime,
                style: TextStylesHelper.black_12_700,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
            width: 80,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColorsHelper.mayaBlue,
              ),
            ),
          ),
          const CheckpointCircleWidget(
            backgroundColor: AppColorsHelper.salmonUpstream,
            radius: 10,
            child: CheckpointCircleWidget(
              backgroundColor: AppColorsHelper.vivaldiRed,
              radius: 6,
            ),
          ),
        ],
      ),
    );
  }
}
