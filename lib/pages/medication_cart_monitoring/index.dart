import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
import 'package:health_craft_med_cart_monitoring_mb/state/master_data.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MedicationCartMonitoringPage extends StatefulWidget {
  @override
  State<MedicationCartMonitoringPage> createState() =>
      _MedicationCartMonitoringPageState();
}

class _MedicationCartMonitoringPageState
    extends State<MedicationCartMonitoringPage> {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding?
      monitoringDeviceInBuildingData;
  bool isLoadingMonitoringDeviceInBuilding = false;

  TextEditingController searchController = TextEditingController();
  String? dropdownValue;
  String searchValue = "";
  String menuView = 'All';

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await context.read<MasterDataState>().fetchAllBuilding(context);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final optionsBuilding = context.watch<MasterDataState>().optionsBuilding;
    if (dropdownValue == null &&
        optionsBuilding != null &&
        optionsBuilding.isNotEmpty) {
      setState(() {
        dropdownValue = optionsBuilding[0].value;
      });
    }

    fetchMonitoringDeviceInBuildingData();
  }

  Future<void> fetchMonitoringDeviceInBuildingData() async {
    if (dropdownValue == null) return;

    setState(() {
      isLoadingMonitoringDeviceInBuilding = true;
    });
    try {
      Input$MonitoringDeviceInBuildingFilterInput filter =
          Input$MonitoringDeviceInBuildingFilterInput(
        buildingID: dropdownValue!,
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
      setState(() {
        isLoadingMonitoringDeviceInBuilding = false;
      });
    }
  }

  void onChangeMenu(String value) {
    setState(() {
      menuView = value;
    });
  }

  void onChangeBuildingID(String? value) {
    setState(() {
      dropdownValue = value!;
    });
    // Fetch the monitoring data based on the new dropdownValue
    fetchMonitoringDeviceInBuildingData();
  }

  void onSubmitSearch() {
    setState(() {
      searchValue = searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final optionsBuilding = context.watch<MasterDataState>().optionsBuilding;
    final isLoadingBuilding =
        context.watch<MasterDataState>().isLoadingBuilding;

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
                                onTap: onSubmitSearch,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Skeletonizer(
                                enabled: isLoadingBuilding,
                                child: InputSelectText(
                                  options: optionsBuilding ?? [],
                                  value: dropdownValue,
                                  onChange: (value) =>
                                      onChangeBuildingID(value),
                                ),
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
                        
                        if (isLoadingBuilding ||
                            isLoadingMonitoringDeviceInBuilding)
                          Skeletonizer(
                            enabled: isLoadingBuilding ||
                                isLoadingMonitoringDeviceInBuilding,
                            child: Column(
                              children: [
                                ...List.generate(
                                  3,
                                  (index) => Column(
                                    children: [
                                      Container(
                                        clipBehavior: Clip.hardEdge,
                                        width: double.infinity,
                                        height: 150,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12,),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Image.asset(
                                          "assets/images/white-foreground.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 16)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          BuildMonitoringList(
                            floorList:
                                monitoringDeviceInBuildingData?.floorList ?? [],
                            menuView: menuView,
                            searchValue: searchValue,
                          )
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
