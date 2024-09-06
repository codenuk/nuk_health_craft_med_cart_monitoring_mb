import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/checkout_reason_pie.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CardCheckoutReason extends StatelessWidget {
  final double dischargePercent;
  final double movePatientToAnotherDrawerPercent;
  final double dischargeDeathPercent;
  final double movePatientToAnotherWardPercent;

  const CardCheckoutReason({
    super.key,
    required this.dischargePercent,
    required this.movePatientToAnotherDrawerPercent,
    required this.dischargeDeathPercent,
    required this.movePatientToAnotherWardPercent,
  });

  @override
  Widget build(BuildContext context) {
    return CardLayout(
      child: Column(
        children: [
          Text(
            'Checkout Reason',
            style: Theme.of(context).appTexts.subtitle,
          ),
          Text(
            'สาเหตุการนำออก',
            style: Theme.of(context)
                .appTexts
                .body
                .copyWith(color: Theme.of(context).appColors.gray1),
          ),
          SizedBox(height: 10),
          CheckoutReasonPieChart(
            dischargePercent: dischargePercent,
            movePatientToAnotherDrawerPercent: movePatientToAnotherDrawerPercent,
            dischargeDeathPercent: dischargeDeathPercent,
            movePatientToAnotherWardPercent: movePatientToAnotherWardPercent,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).appColors.primaryMain,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '$dischargePercent%',
                style: Theme.of(context).appTexts.h5,
              ),
              SizedBox(width: 10),
              Text(
                'Discharge',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).appColors.primaryBorder,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '$movePatientToAnotherDrawerPercent%',
                style: Theme.of(context).appTexts.h5,
              ),
              SizedBox(width: 10),
              Text(
                'Move Patient to Another Drawer',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).appColors.primaryPressed,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '$dischargeDeathPercent%',
                style: Theme.of(context).appTexts.h5,
              ),
              SizedBox(width: 10),
              Text(
                'Discharge Death',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).appColors.primarySecond,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '$movePatientToAnotherWardPercent%',
                style: Theme.of(context).appTexts.h5,
              ),
              SizedBox(width: 10),
              Text(
                'Move Patient to Another Ward',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          )
        ],
      ),
    );
  }
}
