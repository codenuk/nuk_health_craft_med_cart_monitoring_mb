import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/environment.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/index.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final packageInfo = context.watch<GlobalState>().packageInfo;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).appColors.primaryMain,
      alignment: Alignment.center,
      child: Text(
        "Version ${packageInfo.version}+${packageInfo.buildNumber} (${Environment.stage})",
        style: Theme.of(context).appTexts.body.copyWith(
              color: Theme.of(context).appColors.white,
            ),
      ),
    );
  }
}
