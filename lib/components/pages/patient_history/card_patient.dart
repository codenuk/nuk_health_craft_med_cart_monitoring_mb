import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/utils/other.dart';

class CardPatient extends StatelessWidget {
  final String? checkInDate;
  final String? roomNo;
  final String? patientName;
  final String wardName;
  final String username;
  final String? checkOutDate;
  final String deviceID;
  final String? reason;
  final bool isHaveDocument;

  const CardPatient({
    super.key,
    required this.checkInDate,
    required this.roomNo,
    required this.patientName,
    required this.wardName,
    required this.username,
    required this.checkOutDate,
    required this.deviceID,
    required this.reason,
    required this.isHaveDocument,
  });

  Future<void> onDownload() async {
    
  }

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final double widthLabel = flutterView.isRegularSmartphoneOrLess ? 100 : 130;

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
                checkInDate == null ? '-' : formatUpdatedAt(checkInDate!),
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
                roomNo ?? '-',
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
                patientName ?? '-',
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
                wardName,
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
                username,
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
                checkOutDate == null ? '-' : formatUpdatedAt(checkOutDate!),
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
                deviceID,
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
                reason ?? '-',
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
              if (isHaveDocument)
                GestureDetector(
                  onTap: onDownload,
                  child: Icon(
                    Icons.description,
                    color: Theme.of(context).appColors.primaryMain,
                    size: 24.0,
                  ),
                )
              else
                Text('-', style: Theme.of(context).appTexts.subtitle)
            ],
          ),
        ],
      ),
    );
  }
}
