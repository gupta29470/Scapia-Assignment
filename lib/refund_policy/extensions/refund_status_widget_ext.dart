part of '../widgets/refund_status_widget.dart';

extension on _RefundStatusWidgetState {
  void handleProgessController() async {
    if (currentIndex.value < RefundData.refundDataMaxLength) {
      handleProgressControllerUtil();
    }
    progressController.addListener(() {
      if (progressController.isCompleted &&
          currentIndex.value < RefundData.refundDataMaxLength) {
        currentIndex.value++;
        progressController.reset();
        handleProgressControllerUtil();
      }
    });
  }

  void handleProgressControllerUtil() {
    int millisecondDuration = max(
      600,
      600 * (RefundKeys.maxTextHeight(currentIndex.value).ceil() ~/ 80),
    );
    progressController.duration = Duration(
      milliseconds: millisecondDuration,
    );
    progressController.forward();
  }
}
