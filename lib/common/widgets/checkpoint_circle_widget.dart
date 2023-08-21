import 'package:flutter/material.dart';

class CheckpointCircleWidget extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final Widget? child;

  const CheckpointCircleWidget({
    super.key,
    required this.backgroundColor,
    required this.radius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: child,
    );
  }
}
