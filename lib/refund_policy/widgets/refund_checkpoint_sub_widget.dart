import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/data/refund_data.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

part '../extensions/refund_checkpoint_sub_widget_ext.dart';

class RefundCheckpointSubWidget extends StatefulWidget {
  final int index;
  final Animation<double> progressAnimation;
  final int currentIndexValue;

  const RefundCheckpointSubWidget({
    super.key,
    required this.index,
    required this.progressAnimation,
    required this.currentIndexValue,
  });

  @override
  State<RefundCheckpointSubWidget> createState() =>
      _RefundCheckpointSubWidgetState();
}

class _RefundCheckpointSubWidgetState extends State<RefundCheckpointSubWidget> {
  final GlobalKey cancellationTextKey = GlobalKey();
  final GlobalKey chargesTextKey = GlobalKey();
  ValueNotifier<double> cancellationTextHeightNotifier =
      ValueNotifier<double>(80);
  ValueNotifier<double> chargesTextHeightNotifier = ValueNotifier<double>(80);
  ValueNotifier<double> maxLineHeightNotifier = ValueNotifier<double>(80);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setMaxLineHeight(),
    );
  }

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
              if (isCancellationTextValid(widget.index)) ...[
                const SizedBox(width: 40),
                Flexible(
                  child: Text(
                    RefundData.cancellationTexts[widget.index],
                    style: TextStylesHelper.cloudCover_12_700,
                    key: cancellationTextKey,
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
                    key: chargesTextKey,
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
