import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CardLocker extends StatelessWidget {
  final num no;
  final String? patientName;
  final String? hn;
  final String? roomNo;

  const CardLocker({
    super.key,
    required this.no,
    this.patientName,
    this.hn,
    this.roomNo,
  });

  @override
  Widget build(BuildContext context) {
    final Color textColor = hn != null
        ? Theme.of(context).appColors.white
        : Theme.of(context).appColors.text;

    return CardLayout(
      color: hn != null ? 'primaryMain' : 'white',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: hn != null
                      ? Theme.of(context).appColors.primaryBorder
                      : Theme.of(context).appColors.primaryPressed,
                ),
                child: Stack(
                  children: [
                    Icon(
                      Icons.folder,
                      color: hn != null
                          ? Theme.of(context).appColors.white
                          : Theme.of(context).appColors.primaryMain,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Locker $no',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(color: textColor),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 65,
                child: Text(
                  'ชื่อผู้ป่วย',
                  style: Theme.of(context)
                      .appTexts
                      .body
                      .copyWith(color: textColor),
                ),
              ),
              Text(
                patientName ?? '-',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(color: textColor),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: 65,
                child: Text(
                  'HN',
                  style: Theme.of(context)
                      .appTexts
                      .body
                      .copyWith(color: textColor),
                ),
              ),
              Text(
                hn ?? '-',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(color: textColor),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: 65,
                child: Text(
                  'ห้อง',
                  style: Theme.of(context)
                      .appTexts
                      .body
                      .copyWith(color: textColor),
                ),
              ),
              Text(
                roomNo ?? '-',
                style: Theme.of(context)
                    .appTexts
                    .subtitle
                    .copyWith(color: textColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
