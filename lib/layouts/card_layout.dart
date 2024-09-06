import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CardLayout extends StatelessWidget {
  final Widget child;
  final String? color;

  const CardLayout({
    super.key,
    required this.child,
    this.color = 'white',
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, Color> colorMap = {
      'white': Theme.of(context).appColors.white,
      'primaryMain': Theme.of(context).appColors.primaryMain,
    };

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorMap[color],
      ),
      child: child,
    );
  }
}
