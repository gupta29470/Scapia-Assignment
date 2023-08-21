import 'package:flutter/material.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStylesHelper.black_16_600,
    );
  }
}
