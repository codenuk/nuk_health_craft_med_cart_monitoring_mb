import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/loading_dialog.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/report.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/report.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/utils/other.dart';

class CardPatient extends StatefulWidget {
  final String? checkInDate;
  final String? roomNo;
  final String? patientName;
  final String wardName;
  final String username;
  final String? checkOutDate;
  final String deviceID;
  final String? reason;
  final bool isHaveDocument;
  final String? UUID;

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
    required this.UUID,
  });

  @override
  State<CardPatient> createState() => _CardPatientState();
}

class _CardPatientState extends State<CardPatient> {
  String? pdfUrl;

  Future<void> onDownload() async {
    showLoadingDialog(context);
    try {
      Input$PrintMedicalRecordInput input = Input$PrintMedicalRecordInput(
        UUID: widget.UUID!,
        deviceID: widget.deviceID,
      );

      Mutation$printMedicalRecord$printMedicalRecord? result =
          await PrintMedicalRecordService().printMedicalRecord(
        context: context,
        input: input,
      );

      if (result == null) return;

      result.when(
        mutationPrintMedicalRecord: (result) {
          setState(() {
            pdfUrl = result.pdfUrl;
          });

          final encodedUrl = Uri.encodeComponent(result.pdfUrl);

          context.push('/web_view/$encodedUrl');
        },
        error: (errorData) {
          showSnackBarError(context, errorData.res_desc);
        },
        orElse: () {
          showSnackBarError(context, 'Invalid API printMedicalRecord');
        },
      );
    } catch (e) {
      print('error function printMedicalRecord, $e');
    } finally {
      hideLoadingDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final double widthLabel = flutterView.isRegularSmartphoneOrLess ? 100 : 130;
    final double widthValue = flutterView.isRegularSmartphoneOrLess
        ? MediaQuery.of(context).size.width * 0.54
        : MediaQuery.of(context).size.width * 0.24;

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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.checkInDate == null
                      ? '-'
                      : formatUpdatedAt(widget.checkInDate!),
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.roomNo ?? '-',
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.patientName ?? '-',
                  style: Theme.of(context).appTexts.subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.wardName,
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.username,
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.checkOutDate == null
                      ? '-'
                      : formatUpdatedAt(widget.checkOutDate!),
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.deviceID,
                  style: Theme.of(context).appTexts.subtitle,
                ),
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
              SizedBox(
                width: widthValue,
                child: Text(
                  widget.reason ?? '-',
                  style: Theme.of(context).appTexts.subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
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
              if (widget.isHaveDocument)
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
