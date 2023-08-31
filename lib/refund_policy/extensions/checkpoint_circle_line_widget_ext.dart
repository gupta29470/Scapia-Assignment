part of '../widgets/checkpoint_circle_line_widget.dart';

extension on CheckpointCircleLineWidget {
  Color outerCircleColor(int index) {
    if (index == RefundData.refundDataMaxLength - 1) {
      return AppColorsHelper.salmonUpstream;
    }
    return AppColorsHelper.springSlumberGreen;
  }

  Color innerCircleColor(int index) {
    if (index == RefundData.refundDataMaxLength - 1) {
      return AppColorsHelper.vivaldiRed;
    }
    return AppColorsHelper.artificialTurf;
  }
}
