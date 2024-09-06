import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_checkout_reason.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_dispensing_type.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_gender.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_locker.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/card_med_cart.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class MedicationCartMonitoringIDPage extends StatefulWidget {
  final String id;

  const MedicationCartMonitoringIDPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<MedicationCartMonitoringIDPage> createState() =>
      _MedicationCartMonitoringPageState();
}

class _MedicationCartMonitoringPageState
    extends State<MedicationCartMonitoringIDPage> {
  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    return Scaffold(
      drawer: MedDrawer(),
      appBar: MedAppbar(
        title: widget.id,
        goBack: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logos/bg.png"),
            scale: 1.3,
            alignment: Alignment.bottomRight,
          ),
          color: Theme.of(context).appColors.gray4,
        ),
        child: Layout(
          child: SingleChildScrollView(
            child: SafeArea(
              child: flutterView.isRegularSmartphoneOrLess
                  ? LayoutMobile()
                  : LayoutTablet(),
            ),
          ),
        ),
      ),
    );
  }
}

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 150,
            child: Button(
              text: 'ประวัติการใช้งาน',
              backgroundColor: Theme.of(context).appColors.primaryMain,
              textColor: Theme.of(context).appColors.white,
            ),
          ),
        ),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://picsum.photos/200/300',
            width: double.infinity,
            height: 400,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 10),
        CardMedCart(
          deviceID: 'deviceID',
          isActive: true,
          amountPatient: 10,
          deviceName: 'TEST',
          location: 'TEST',
          temperature: 20,
          updatedAt: 'TEST',
        ),
        SizedBox(height: 10),
        CardGender(
          femalePercent: 19.2,
          malePercent: 79.8,
          totalPatient: 300,
          totalCart: 10,
          totalActiveCart: 7,
          totalInActiveCart: 3,
        ),
        SizedBox(height: 10),
        CardDispensingType(
          qrCodePercent: 60,
          manualPercent: 40,
          totalQrCode: 1895,
          totalManual: 300,
        ),
        SizedBox(height: 10),
        CardCheckoutReason(
          dischargePercent: 30,
          movePatientToAnotherDrawerPercent: 10,
          dischargeDeathPercent: 20,
          movePatientToAnotherWardPercent: 40,
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Lockers',
            style: Theme.of(context).appTexts.h2,
          ),
        ),
        SizedBox(height: 10),
        CardLocker(
          no: 1,
          hn: 'TEST',
          patientName: 'TEST',
          roomNo: 'TEST',
        ),
        SizedBox(height: 10),
        CardLocker(
          no: 2,
          hn: null,
          patientName: null,
          roomNo: null,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class LayoutTablet extends StatelessWidget {
  const LayoutTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 150,
            child: Button(
              text: 'ประวัติการใช้งาน',
              backgroundColor: Theme.of(context).appColors.primaryMain,
              textColor: Theme.of(context).appColors.white,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/200/300',
                  fit: BoxFit.fill,
                  height: 625,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CardMedCart(
                    deviceID: 'deviceID',
                    isActive: true,
                    amountPatient: 10,
                    deviceName: 'TEST',
                    location: 'TEST',
                    temperature: 20,
                    updatedAt: 'TEST',
                  ),
                  SizedBox(height: 10),
                  CardGender(
                    femalePercent: 19.2,
                    malePercent: 79.8,
                    totalPatient: 300,
                    totalCart: 10,
                    totalActiveCart: 7,
                    totalInActiveCart: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CardDispensingType(
                qrCodePercent: 60,
                manualPercent: 40,
                totalQrCode: 1895,
                totalManual: 300,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: CardCheckoutReason(
                dischargePercent: 30,
                movePatientToAnotherDrawerPercent: 10,
                dischargeDeathPercent: 20,
                movePatientToAnotherWardPercent: 40,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Lockers',
            style: Theme.of(context).appTexts.h2,
          ),
        ),
        SizedBox(height: 10),
        GridView.builder(
          itemCount: 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 200),
          padding: EdgeInsets.symmetric(vertical: 20),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CardLocker(
                  no: 1,
                  hn: 'TEST',
                  patientName: 'TEST',
                  roomNo: 'TEST',
                );
              case 1:
                return CardLocker(
                  no: 2,
                  hn: null,
                  patientName: null,
                  roomNo: null,
                );
              default:
                return SizedBox.shrink();
            }
          },
        )
      ],
    );
  }
}
