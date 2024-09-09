import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/segment_button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/card_med_cart.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/monitoring.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class MedicationCartMonitoringPage extends StatefulWidget {
  @override
  State<MedicationCartMonitoringPage> createState() =>
      _MedicationCartMonitoringPageState();
}

class _MedicationCartMonitoringPageState
    extends State<MedicationCartMonitoringPage> {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding?
      monitoringDeviceInBuildingData;

  TextEditingController searchController = TextEditingController();
  String? dropdownValue;
  String menuView = 'All';

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fetchData();
  }

  Future<void> fetchData() async {
    // set state isLoading: true for make skeleton loading

    try {
      Input$MonitoringDeviceInBuildingFilterInput filter =
          Input$MonitoringDeviceInBuildingFilterInput(
        buildingID: '39a61f51-b59f-4cac-a79e-b87a512d0cf2',
      );

      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding? result =
          await MonitoringDeviceInBuildingService().monitoringDeviceInBuilding(
        context: context,
        filter: filter,
      );

      if (result == null) return;

      result.when(
        monitoringDeviceInBuilding: (result) {
          setState(() {
            monitoringDeviceInBuildingData = result;
          });

          showSnackBarSuccess(context, 'Success');
        },
        error: (errorData) {
          showSnackBarError(context, errorData.res_desc);
        },
        orElse: () {
          showSnackBarError(context, 'Invalid API monitoringDeviceInBuilding');
        },
      );
    } catch (e) {
      print('error function monitoringDeviceInBuilding, $e');
    } finally {
      // set state isLoading: false for make skeleton loading
    }
  }

  void onChangeMenu(String value) {
    setState(() {
      menuView = value;
    });
  }

  Widget _buildMonitoringList(BuildContext context) {
    final floorList = monitoringDeviceInBuildingData?.floorList;

    if (floorList == null || floorList.isEmpty) {
      return Center(child: Text('No floors available'));
    }

    // Use ListView to display the list of ExpansionTile widgets
    return ListView(
      shrinkWrap: true,
      physics:
          NeverScrollableScrollPhysics(), // Control scroll behavior if needed
      children: floorList.map((floor) {
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
          children: [_buildWardList(context, floor?.wardList ?? [])],
        );
      }).toList(),
    );
  }

  Widget _buildWardList(
    BuildContext context,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>
        wardList,
  ) {
    if (wardList.isEmpty) {
      return Center(child: Text('No ward available'));
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
              children: [_buildDeviceGrid(context, ward?.deviceList ?? [])],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDeviceGrid(
    BuildContext context,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>
        deviceList,
  ) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MedDrawer(),
      appBar: MedAppbar(title: 'Medication Cart Monitoring'),
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
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: InputText(
                                textEditController: searchController,
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.qr_code_scanner),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 3,
                              child: Button(
                                text: 'ค้นหา',
                                backgroundColor:
                                    Theme.of(context).appColors.primaryMain,
                                textColor: Theme.of(context).appColors.white,
                                onTap: () => null,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: InputSelectText(
                                options: [
                                  OptionText(value: 'Test', label: 'Test'),
                                  OptionText(value: 'Test 2', label: 'Test 2')
                                ],
                                value: dropdownValue,
                                onChange: (value) {
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 6,
                              child: CustomizeSegmentButton(
                                listMenu: ['All', 'Active', 'In-Active'],
                                menuView: menuView,
                                onChanged: onChangeMenu,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        _buildMonitoringList(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
