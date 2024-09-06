import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class CardPatient extends StatelessWidget {
  const CardPatient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final double widthLabel = flutterView.isRegularSmartphoneOrLess ? 120 : 130;

    return CardLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Date (Check-In).',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                'Jan 28, 2024 13:00 น.',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Room No.',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                '1963',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Patient Name',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                'Alday Banamex',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Ward',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                'Ward 15',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Nurse ID',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                '8524792206',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Date (Checkout)',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                'Jan 28, 2024 13:00 น.',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Device ID',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                'SMC9-V1-L2410-0001',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Reason',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Text(
                '-',
                style: Theme.of(context).appTexts.subtitle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: widthLabel,
                child: Text(
                  'Download',
                  style: Theme.of(context).appTexts.body,
                ),
              ),
              Icon(
                Icons.description,
                color: Theme.of(context).appColors.primaryMain,
                size: 24.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
