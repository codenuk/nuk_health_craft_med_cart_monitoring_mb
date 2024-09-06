import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? width;

  const Button({
    super.key,
    this.onTap,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? double.infinity,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).appTexts.subtitle.copyWith(color: textColor),
        ),
      ),
    );
  }
}
