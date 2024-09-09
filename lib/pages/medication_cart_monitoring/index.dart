import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/segment_button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/medication_cart_monitoring/build_monitoring_list.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/monitoring.dart';

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
    
    fetchMonitoringDeviceInBuildingData();
  }

  Future<void> fetchMonitoringDeviceInBuildingData() async {
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
                        BuildMonitoringList(
                          floorList: monitoringDeviceInBuildingData?.floorList ?? [],
                        ),
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
