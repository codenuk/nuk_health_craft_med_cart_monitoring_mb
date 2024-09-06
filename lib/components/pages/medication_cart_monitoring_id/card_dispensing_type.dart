import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/dispensing_type_pie.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CardDispensingType extends StatelessWidget {
  final double qrCodePercent;
  final double manualPercent;
  final num totalQrCode;
  final num totalManual;

  const CardDispensingType({
    super.key,
    required this.qrCodePercent,
    required this.manualPercent,
    required this.totalQrCode,
    required this.totalManual,
  });

  @override
  Widget build(BuildContext context) {
    return CardLayout(
      child: Column(
        children: [
          Text(
            'Dispensing Type',
            style: Theme.of(context).appTexts.subtitle,
          ),
          Text(
            'ประเภทการจ่ายยา',
            style: Theme.of(context)
                .appTexts
                .body
                .copyWith(color: Theme.of(context).appColors.gray1),
          ),
          SizedBox(height: 10),
          DispensingTypePieChart(
            qrCodePercent: qrCodePercent,
            manualPercent: manualPercent,
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Theme.of(context).appColors.stateSuccess,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'QR Code',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: '$totalQrCode ',
                        style: Theme.of(context).appTexts.h2.copyWith(
                              color: Theme.of(context).appColors.text,
                            ),
                        children: [
                          TextSpan(
                            text: 'คน',
                            style: Theme.of(context).appTexts.body,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1,
                height: 105,
                color: Theme.of(context).appColors.gray1,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Theme.of(context).appColors.gray3,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Manual',
                          style: Theme.of(context).appTexts.body,
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: '$totalManual ',
                        style: Theme.of(context).appTexts.h2.copyWith(
                              color: Theme.of(context).appColors.text,
                            ),
                        children: [
                          TextSpan(
                            text: 'คน',
                            style: Theme.of(context).appTexts.body,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
