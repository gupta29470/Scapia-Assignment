import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/data/refund_data.dart';
import 'package:scapia_assignment/refund_policy/widgets/refund_checkpoint_widget.dart';
import 'package:scapia_assignment/refund_policy/widgets/title_widget.dart';
import 'package:scapia_assignment/styles/app_colors/app_colors_helper.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class RefundStatusWidget extends StatefulWidget {
  const RefundStatusWidget({super.key});

  @override
  State<RefundStatusWidget> createState() => _RefundStatusWidgetState();
}

class _RefundStatusWidgetState extends State<RefundStatusWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController progressController;
  late Animation<double> progressAnimation;
  ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    progressController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );

    progressAnimation =
        Tween<double>(begin: 0, end: 1).animate(progressController);

    progressController.forward();

    progressController.addListener(() {
      if (progressController.isCompleted &&
          currentIndex.value < RefundData.refundDataMaxLength) {
        progressController.reset();
        progressController.forward();
        currentIndex.value++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        color: AppColorsHelper.clearSkies,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleWidget(
                    title: "Cancellation window",
                  ),
                  TitleWidget(
                    title: "Charges",
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: RefundData.refundDataMaxLength,
                itemBuilder: (_, index) {
                  return ValueListenableBuilder<int>(
                    valueListenable: currentIndex,
                    builder: (_, currentIndexValue, __) {
                      if (index == RefundData.refundDataMaxLength - 1) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RefundCheckpointWidget(
                              index: index,
                              progressAnimation: progressAnimation,
                              currentIndexValue: currentIndexValue,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 32,
                              ),
                              child: Text(
                                "As per local time at the property",
                                style: TextStylesHelper.cloudCover_12_700,
                              ),
                            ),
                          ],
                        );
                      }
                      return RefundCheckpointWidget(
                        index: index,
                        progressAnimation: progressAnimation,
                        currentIndexValue: currentIndexValue,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    progressController.dispose();
    super.dispose();
  }
}
