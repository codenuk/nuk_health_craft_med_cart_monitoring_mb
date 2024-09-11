import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/chip.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/utils/other.dart';

class CardMedCart extends StatelessWidget {
  final String? deviceName;
  final String deviceID;
  final bool isActive;
  final String? location;
  final num? temperature;
  final num? amountPatient;
  final String? updatedAt;

  const CardMedCart({
    super.key,
    this.deviceName,
    required this.deviceID,
    required this.isActive,
    this.location,
    this.temperature,
    this.amountPatient,
    this.updatedAt,
  });

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final split_string = location?.split(' / ');

    return CardLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deviceName ?? deviceID,
                    style: Theme.of(context).appTexts.subtitle,
                  ),
                  Text(
                    'Model: $deviceID',
                    style: Theme.of(context).appTexts.bodySm.copyWith(
                          color: Theme.of(context).appColors.gray1,
                        ),
                  ),
                ],
              ),
              CustomizeChip(
                icon: Icons.energy_savings_leaf,
                status: isActive ? 'Active' : 'In-Active',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: flutterView.isRegularSmartphoneOrLess ? 85 : 95,
                        child: Text(
                          'Location',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      SizedBox(
                        width: flutterView.isRegularSmartphoneOrLess
                            ? MediaQuery.of(context).size.width * 0.42
                            : MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              location != null ? split_string![0] : '-',
                              style: Theme.of(context).appTexts.subtitle,
                              maxLines:
                                  flutterView.isRegularSmartphoneOrLess ? 2 : 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              location != null
                                  ? '${split_string![1]} / ${split_string[2]}'
                                  : '-',
                              style: Theme.of(context).appTexts.bodySm.copyWith(
                                  color: Theme.of(context).appColors.gray1),
                              maxLines:
                                  flutterView.isRegularSmartphoneOrLess ? 2 : 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: flutterView.isRegularSmartphoneOrLess ? 85 : 95,
                        child: Text(
                          'Temperature',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${temperature != null ? temperature : '-'} ํc',
                            style: Theme.of(context).appTexts.subtitle,
                          ),
                          Text(
                            '(23 ํc - 27 ํc)',
                            style: Theme.of(context).appTexts.bodySm.copyWith(
                                color: Theme.of(context).appColors.gray1),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: flutterView.isRegularSmartphoneOrLess ? 85 : 95,
                        child: Text(
                          'Patient',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${amountPatient != null ? amountPatient : '-'} People',
                            style: Theme.of(context).appTexts.subtitle,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Image.asset('assets/models/a.png')
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Last updated ${updatedAt != null ? formatUpdatedAt(updatedAt!) : '-'}',
              style: Theme.of(context).appTexts.bodySm.copyWith(
                    color: Theme.of(context).appColors.gray1,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
