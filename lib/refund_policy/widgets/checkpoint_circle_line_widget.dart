import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/data/refund_data.dart';
import 'package:scapia_assignment/common/widgets/checkpoint_circle_widget.dart';
import 'package:scapia_assignment/refund_policy/widgets/checkpoint_line_widget.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';

part '../extensions/checkpoint_circle_line_widget_ext.dart';

class CheckpointCircleLineWidget extends StatelessWidget {
  final int index;
  final int currentIndexValue;
  final Animation<double> progressAnimation;

  const CheckpointCircleLineWidget({
    super.key,
    required this.index,
    required this.currentIndexValue,
    required this.progressAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // checkpoint done
        if (index < currentIndexValue) ...[
          CheckpointCircleWidget(
            radius: 12,
            backgroundColor: outerCircleColor(index),
            child: CheckpointCircleWidget(
              radius: 8,
              backgroundColor: innerCircleColor(index),
            ),
          ),
        ]
        //  checkpoint pending
        else if (currentIndexValue < index) ...[
          const CheckpointCircleWidget(
            radius: 12,
            backgroundColor: AppColorsHelper.satinWhite,
          ),
        ]
        // checkpoint in progress
        else ...[
          FadeTransition(
            opacity: progressAnimation,
            child: CheckpointCircleWidget(
              radius: 12,
              backgroundColor: outerCircleColor(index),
              child: CheckpointCircleWidget(
                radius: 8,
                backgroundColor: innerCircleColor(index),
              ),
            ),
          ),
        ],
        if (index != RefundData.refundDataMaxLength - 1) ...[
          // checkpoint done
          if (index < currentIndexValue) ...[
            const Expanded(
              child: CheckpointLineWidget(
                color: AppColorsHelper.artificialTurf,
                height: double.infinity,
              ),
            ),
          ]
          //  checkpoint pending
          else if (currentIndexValue < index) ...[
            const Expanded(
              child: CheckpointLineWidget(
                color: AppColorsHelper.clearSkies,
                height: double.infinity,
              ),
            ),
          ]
          // checkpoint in progress
          else ...[
            Expanded(
              child: Stack(
                children: [
                  const CheckpointLineWidget(
                    color: AppColorsHelper.clearSkies,
                    height: double.infinity,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizeTransition(
                        sizeFactor: progressAnimation,
                        child: const CheckpointLineWidget(
                          color: AppColorsHelper.artificialTurf,
                          height: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ],
      ],
    );
  }
}
