import 'package:flutter/material.dart';

class CheckpointLineWidget extends StatelessWidget {
  final Color color;

  const CheckpointLineWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
