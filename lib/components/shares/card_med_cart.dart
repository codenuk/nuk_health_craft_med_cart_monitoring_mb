import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/chip.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

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
              CustomizeChip( icon: Icons.energy_savings_leaf ,status: isActive ? 'Active' : 'In-Active',),
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
                        width: 85,
                        child: Text(
                          'Location',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            location != null ? 'Ward 5' : '-',
                            style: Theme.of(context).appTexts.subtitle,
                          ),
                          Text(
                            location != null ? 'อาคาร A / ชั้น 1' : '-',
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
                        width: 85,
                        child: Text(
                          'Temperature',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${temperature != null ? '26.8' : '-'} ํc',
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
                        width: 85,
                        child: Text(
                          'Patient',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${amountPatient != null ? '10' : '-'} People',
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
              'Last updated ${updatedAt != null ? '14:32 - 25/02/2024' : '-'}',
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
