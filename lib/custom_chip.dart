import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String? label;
  final Color? backgroundColor;
  final Decoration? decoration;
  final Color? color;
  final double? width;
  final BoxBorder? border;

  CustomChip({
    this.label,
    this.backgroundColor,
    this.decoration,
    this.color,
    this.border,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: width,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          label!,
          style: TextStyle(
            fontSize: 15,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor),
    );
  }
}
