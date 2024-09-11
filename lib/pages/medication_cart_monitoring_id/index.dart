import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_checkout_reason.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_dispensing_type.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_gender.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring_id/card_locker.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/card_med_cart.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/monitoring.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice? monitoringDevice;
  bool isLoadingMonitoringDevice = false;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      fetchMonitoringDeviceData();
    });
  }

  Future<void> fetchMonitoringDeviceData() async {
    setState(() {
      isLoadingMonitoringDevice = true;
    });
    try {
      Input$MonitoringDeviceFilterInput filter =
          Input$MonitoringDeviceFilterInput(deviceID: widget.id);

      Query$MonitoringDevice$monitoringDevice? result =
          await MonitoringDeviceService().monitoringDevice(
        context: context,
        filter: filter,
      );

      if (result == null) return;

      result.when(
        monitoringDevice: (result) {
          setState(() {
            monitoringDevice = result;
          });
        },
        error: (errorData) {
          showSnackBarError(context, errorData.res_desc);
        },
        orElse: () {
          showSnackBarError(context, 'Invalid API monitoringDevice');
        },
      );
    } catch (e) {
      print('error function monitoringDevice, $e');
    } finally {
      setState(() {
        isLoadingMonitoringDevice = false;
      });
    }
  }

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
                  ? LayoutMobile(
                      isLoading: isLoadingMonitoringDevice,
                      monitoringDevice: monitoringDevice,
                    )
                  : LayoutTablet(),
            ),
          ),
        ),
      ),
    );
  }
}

class LayoutMobile extends StatelessWidget {
  final bool isLoading;
  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice?
      monitoringDevice;

  const LayoutMobile({
    super.key,
    required this.isLoading,
    required this.monitoringDevice,
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
        Skeletonizer(
          enabled: isLoading,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              monitoringDevice?.imageURL ?? 'https://picsum.photos/200/300',
              width: double.infinity,
              height: 400,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10),
        Skeletonizer(
          enabled: isLoading,
          child: CardMedCart(
            deviceID: monitoringDevice?.deviceID ?? '',
            isActive: monitoringDevice?.isActive ?? true,
            amountPatient: monitoringDevice?.amountPatient,
            deviceName: monitoringDevice?.deviceName,
            location: monitoringDevice?.location,
            temperature: monitoringDevice?.temperature,
            updatedAt: monitoringDevice?.updatedAt,
          ),
        ),
        SizedBox(height: 10),
        Skeletonizer(
          enabled: isLoading,
          child: CardGender(
            femalePercent: monitoringDevice?.totalFemalePatient.percent ?? 0,
            malePercent: monitoringDevice?.totalMalePatient.percent ?? 0,
            totalPatient: monitoringDevice?.totalPatient ?? 0,
            totalCart: monitoringDevice?.totalMedCart.total ?? 0,
            totalActiveCart: monitoringDevice?.totalMedCart.totalActive ?? 0,
            totalInActiveCart:
                monitoringDevice?.totalMedCart.totalInActive ?? 0,
          ),
        ),
        SizedBox(height: 10),
        Skeletonizer(
          enabled: isLoading,
          child: CardDispensingType(
            qrCodePercent:
                monitoringDevice?.totalDispensingByQrCode.percent ?? 0,
            manualPercent:
                monitoringDevice?.totalDispensingByManual.percent ?? 0,
            totalQrCode: monitoringDevice?.totalDispensingByQrCode.amount ?? 0,
            totalManual: monitoringDevice?.totalDispensingByManual.amount ?? 0,
          ),
        ),
        SizedBox(height: 10),
        Skeletonizer(
          enabled: isLoading,
          child: CardCheckoutReason(
            dischargePercent:
                monitoringDevice?.totalReasonDischarge.percent ?? 0,
            movePatientToAnotherDrawerPercent: monitoringDevice
                    ?.totalReasonMovePatientToAnotherDrawer.percent ??
                0,
            dischargeDeathPercent:
                monitoringDevice?.totalReasonDischargeDeath.percent ?? 0,
            movePatientToAnotherWardPercent:
                monitoringDevice?.totalReasonMovePatientToAnotherWard.percent ??
                    0,
          ),
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

        ...?monitoringDevice?.lockerList?.asMap().entries.map(
          (entry) {
            int index = entry.key; // Get the index
            var d = entry.value; // Get the locker data

            return Column(
              children: [
                Skeletonizer(
                  enabled: isLoading,
                  child: CardLocker(
                    no: index + 1,
                    hn: d?.hn,
                    patientName: d?.patientName,
                    roomNo: d?.roomNo,
                  ),
                ),
                SizedBox(height: 10),
              ],
            );
          },
        ),
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
