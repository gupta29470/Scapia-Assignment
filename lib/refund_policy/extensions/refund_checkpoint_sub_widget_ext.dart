part of '../widgets/refund_checkpoint_sub_widget.dart';

extension on _RefundCheckpointSubWidgetState {
  bool isCancellationTextValid(int index) {
    return index < RefundData.cancellationTexts.length &&
        RefundData.cancellationTexts[index].isNotEmpty;
  }

  bool isChargesTextValid(int index) {
    return index < RefundData.chargesTexts.length &&
        RefundData.cancellationTexts[index].isNotEmpty;
  }

  void setMaxLineHeight() {
    final cancellationTextBox =
        cancellationTextKey.currentContext!.findRenderObject() as RenderBox;
    final chargesTextBox =
        chargesTextKey.currentContext!.findRenderObject() as RenderBox;

    cancellationTextHeightNotifier.value = cancellationTextBox.size.height;
    chargesTextHeightNotifier.value = chargesTextBox.size.height;
    maxLineHeightNotifier.value = max(
          80,
          max(
            cancellationTextHeightNotifier.value,
            chargesTextHeightNotifier.value,
          ),
        ) -
        12;
  }
}
