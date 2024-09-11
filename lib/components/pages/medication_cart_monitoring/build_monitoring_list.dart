import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring/build_ward_list.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class BuildMonitoringList extends StatelessWidget {
  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>?
      floorList;
  final String menuView;
  final String searchValue;

  const BuildMonitoringList({
    super.key,
    required this.floorList,
    required this.menuView,
    required this.searchValue,
  });

  @override
  Widget build(BuildContext context) {
    if (floorList == null || floorList!.isEmpty) {
      return Center(
          child: Text('No floors available',
              style: Theme.of(context).appTexts.subtitle));
    }

    // Use ListView to display the list of ExpansionTile widgets
    return ListView(
      shrinkWrap: true,
      physics:
          NeverScrollableScrollPhysics(), // Control scroll behavior if needed
      children: floorList!.map((floor) {
        return ExpansionTile(
          title: Text(
            floor?.floorName ?? 'Unknow',
            style: Theme.of(context).appTexts.subtitle.copyWith(
                  color: Theme.of(context).appColors.white,
                ),
          ),
          tilePadding: EdgeInsets.only(left: 20, right: 10, top: 7, bottom: 7),
          dense: true,
          collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          backgroundColor: Theme.of(context).appColors.primaryMain,
          collapsedBackgroundColor: Theme.of(context).appColors.primaryMain,
          initiallyExpanded: true,
          iconColor: Theme.of(context).appColors.white,
          collapsedIconColor: Theme.of(context).appColors.white,
          children: [
            BuildWardList(
              wardList: floor?.wardList ?? [],
              menuView: menuView,
              searchValue: searchValue,
            )
          ],
        );
      }).toList(),
    );
  }
}
