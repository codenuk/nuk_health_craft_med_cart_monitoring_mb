import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/card_med_cart.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class BuildDeviceGrid extends StatelessWidget {
  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>
      deviceList;

  const BuildDeviceGrid({
    super.key,
    required this.deviceList,
  });

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    if (deviceList.isEmpty) {
      return Container(
        color: Theme.of(context).appColors.gray4,
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Center(
          child: Text(
            'No device available',
            style: Theme.of(context).appTexts.subtitle,
          ),
        ),
      );
    }

    return Container(
      color: Theme.of(context).appColors.gray4,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: double.infinity,
      child: GridView.builder(
        itemCount: deviceList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: flutterView.isRegularSmartphoneOrLess ? 1 : 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          mainAxisExtent: 230,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // Access each device using deviceList[index]
          final device = deviceList[index];

          // Handle cases where device is null
          if (device == null) {
            return Center(child: Text('Unknown device'));
          }

          return GestureDetector(
            onTap: () =>
                context.push('/medication_cart_monitoring/${device.deviceID}'),
            child: CardMedCart(
              deviceID: device.deviceID,
              isActive: device.isActive,
              deviceName: device.deviceName,
              location: device.location,
              temperature: device.temperature,
              amountPatient: device.amountPatient,
              updatedAt: device.updatedAt,
            ),
          );
        },
      ),
    );
  }
}
