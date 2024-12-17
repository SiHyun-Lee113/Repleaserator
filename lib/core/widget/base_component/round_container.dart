import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color backgroundColor;
  final Widget child;

  const RoundContainer({
    super.key,
    this.width,
    this.height,
    this.backgroundColor = Colors.white,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
