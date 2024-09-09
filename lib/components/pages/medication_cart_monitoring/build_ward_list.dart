import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring/build_device_grid.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class BuildWardList extends StatelessWidget {
  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>
      wardList;

  const BuildWardList({
    super.key,
    required this.wardList,
  });

  @override
  Widget build(BuildContext context) {
    if (wardList.isEmpty) {
      return Container(
        color: Theme.of(context).appColors.gray3,
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Center(
          child: Text(
            'No ward available',
            style: Theme.of(context).appTexts.subtitle,
          ),
        ),
      );
    }

    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: wardList.map((ward) {
        return Container(
          color: Theme.of(context).appColors.gray3,
          padding: EdgeInsets.all(10),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 0),
            dense: true,
            horizontalTitleGap: 0,
            minLeadingWidth: 0,
            minVerticalPadding: 0,
            title: ExpansionTile(
              title: Text(
                '${ward?.wardName ?? 'Unknow'} (${ward?.deviceList?.length ?? 0})',
                style: Theme.of(context).appTexts.subtitle.copyWith(
                      color: Theme.of(context).appColors.text,
                    ),
              ),
              tilePadding:
                  EdgeInsets.only(left: 20, right: 10, top: 7, bottom: 7),
              dense: true,
              collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              backgroundColor: Theme.of(context).appColors.primaryPressed,
              collapsedBackgroundColor:
                  Theme.of(context).appColors.primaryPressed,
              initiallyExpanded: true,
              iconColor: Theme.of(context).appColors.text,
              collapsedIconColor: Theme.of(context).appColors.text,
              children: [
                BuildDeviceGrid(
                  deviceList: ward?.deviceList ?? [],
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
