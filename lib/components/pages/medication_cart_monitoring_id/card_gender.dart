import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/gender_pie.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CardGender extends StatelessWidget {
  final double femalePercent;
  final double malePercent;
  final num totalPatient;
  final num totalCart;
  final num totalActiveCart;
  final num totalInActiveCart;

  const CardGender({
    super.key,
    required this.femalePercent,
    required this.malePercent,
    required this.totalPatient,
    required this.totalCart,
    required this.totalActiveCart,
    required this.totalInActiveCart,
  });

  @override
  Widget build(BuildContext context) {
    return CardLayout(
      child: Column(
        children: [
          Text(
            'Gender (Patient)',
            style: Theme.of(context).appTexts.subtitle,
          ),
          Text(
            'เพศของผู้ป่่วย',
            style: Theme.of(context)
                .appTexts
                .body
                .copyWith(color: Theme.of(context).appColors.gray1),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: GenderPieChart(
                  femalePercent: femalePercent,
                  malePercent: malePercent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Theme.of(context).appColors.stateWarning,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$femalePercent%',
                            style: Theme.of(context).appTexts.h5,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Female',
                            style: Theme.of(context)
                                .appTexts
                                .subtitle
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Theme.of(context).appColors.primaryHover,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$malePercent%',
                            style: Theme.of(context).appTexts.h5,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Male',
                            style: Theme.of(context)
                                .appTexts
                                .subtitle
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Total Patient',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).appTexts.h5,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '$totalPatient ',
                        style: Theme.of(context).appTexts.h2.copyWith(
                              color: Theme.of(context).appColors.text,
                            ),
                        children: [
                          TextSpan(
                            text: 'Patient',
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
                height: 100,
                color: Theme.of(context).appColors.gray1,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Total Cart',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).appTexts.h5,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '$totalCart ',
                        style: Theme.of(context).appTexts.h2.copyWith(
                              color: Theme.of(context).appColors.text,
                            ),
                        children: [
                          TextSpan(
                            text: 'Cart',
                            style: Theme.of(context).appTexts.body,
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Active : ',
                        style: Theme.of(context).appTexts.body.copyWith(
                              color: Theme.of(context).appColors.gray1,
                            ),
                        children: [
                          TextSpan(
                            text: '$totalActiveCart ',
                            style: Theme.of(context).appTexts.h5,
                          ),
                          TextSpan(
                            text: 'Inactive : ',
                            style: Theme.of(context).appTexts.body.copyWith(
                                  color: Theme.of(context).appColors.gray1,
                                ),
                          ),
                          TextSpan(
                            text: '$totalInActiveCart',
                            style: Theme.of(context).appTexts.h5,
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
