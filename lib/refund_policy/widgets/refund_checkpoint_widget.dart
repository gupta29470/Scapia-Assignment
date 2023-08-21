import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/data/refund_data.dart';
import 'package:scapia_assignment/common/widgets/checkpoint_circle_widget.dart';
import 'package:scapia_assignment/refund_policy/widgets/checkpoint_line_widget.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

part '../extensions/refund_checkpoint_widget_ext.dart';

class RefundCheckpointWidget extends StatefulWidget {
  final int index;
  final Animation<double> progressAnimation;
  final int currentIndexValue;

  const RefundCheckpointWidget({
    super.key,
    required this.index,
    required this.progressAnimation,
    required this.currentIndexValue,
  });

  @override
  State<RefundCheckpointWidget> createState() => _RefundCheckpointWidgetState();
}

class _RefundCheckpointWidgetState extends State<RefundCheckpointWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: [
              Column(
                children: [
                  // checkpoint done
                  if (widget.index < widget.currentIndexValue) ...[
                    CheckpointCircleWidget(
                      radius: 12,
                      backgroundColor: outerCircleColor(widget.index),
                      child: CheckpointCircleWidget(
                        radius: 8,
                        backgroundColor: innerCircleColor(widget.index),
                      ),
                    ),
                  ]
                  //  checkpoint pending
                  else if (widget.currentIndexValue < widget.index) ...[
                    const CheckpointCircleWidget(
                      radius: 12,
                      backgroundColor: AppColorsHelper.satinWhite,
                    ),
                  ]
                  // checkpoint in progress
                  else ...[
                    FadeTransition(
                      opacity: widget.progressAnimation,
                      child: CheckpointCircleWidget(
                        radius: 12,
                        backgroundColor: outerCircleColor(widget.index),
                        child: CheckpointCircleWidget(
                          radius: 8,
                          backgroundColor: innerCircleColor(widget.index),
                        ),
                      ),
                    ),
                  ],
                  if (widget.index != RefundData.refundDataMaxLength - 1) ...[
                    Stack(
                      children: [
                        // checkpoint done
                        if (widget.index < widget.currentIndexValue) ...[
                          const CheckpointLineWidget(
                            color: AppColorsHelper.artificialTurf,
                          ),
                        ]
                        //  checkpoint pending
                        else if (widget.currentIndexValue < widget.index) ...[
                          const CheckpointLineWidget(
                            color: AppColorsHelper.clearSkies,
                          ),
                        ]
                        // checkpoint in progress
                        else ...[
                          const CheckpointLineWidget(
                            color: AppColorsHelper.clearSkies,
                          ),
                          SizeTransition(
                            sizeFactor: widget.progressAnimation,
                            child: const CheckpointLineWidget(
                              color: AppColorsHelper.artificialTurf,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ],
              ),
              if (isCancellationTextValid(widget.index)) ...[
                const SizedBox(width: 20),
                Flexible(
                  child: Text(
                    RefundData.cancellationTexts[widget.index],
                    style: TextStylesHelper.cloudCover_12_700,
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(width: 20),
        if (isChargesTextValid(widget.index)) ...[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    RefundData.chargesTexts[widget.index],
                    style: TextStylesHelper.black_12_700,
                  ),
                ),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
