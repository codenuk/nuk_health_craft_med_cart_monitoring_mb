import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/footer.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: child,
          ),
        ),
        Footer(),
      ],
    );
  }
}
