import 'package:flutter/material.dart';

class CheckpointLineWidget extends StatelessWidget {
  final Color color;
  final double height;

  const CheckpointLineWidget({
    super.key,
    required this.color,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
