import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/widgets/checkpoint_circle_line_widget.dart';

class RefundCheckpointWidget extends StatelessWidget {
  final int index;
  final int currentIndexValue;
  final Animation<double> progressAnimation;
  final Widget child;

  const RefundCheckpointWidget({
    super.key,
    required this.child,
    required this.currentIndexValue,
    required this.index,
    required this.progressAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          CheckpointCircleLineWidget(
            index: index,
            currentIndexValue: currentIndexValue,
            progressAnimation: progressAnimation,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 80,
              maxHeight: double.infinity,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
