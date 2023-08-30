part of '../widgets/refund_checkpoint_widget.dart';

extension on _RefundCheckpointWidgetState {
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

  bool isCancellationTextValid(int index) {
    return index < RefundData.cancellationTexts.length &&
        RefundData.cancellationTexts[index].isNotEmpty;
  }

  bool isChargesTextValid(int index) {
    return index < RefundData.chargesTexts.length &&
        RefundData.cancellationTexts[index].isNotEmpty;
  }

  void setSizes(int index) {
    GlobalKey cancellationTextKey = RefundKeys.getCancellationTextKey(index);
    GlobalKey chargesTextKey = RefundKeys.getChargesTextKey(index);

    RenderBox? cancellationTextBox =
        cancellationTextKey.currentContext?.findRenderObject() as RenderBox?;

    if (cancellationTextBox != null) {
      double height =
          max(80, RefundKeys.cancellationTextHeight(index, "check"));
      cancellationTextHeightNotifier.value = height;
    }

    RenderBox? chargesTextBox =
        chargesTextKey.currentContext?.findRenderObject() as RenderBox?;

    if (chargesTextBox != null) {
      chargesTextHeightNotifier.value = max(80, chargesTextBox.size.height);
    }
  }
}
