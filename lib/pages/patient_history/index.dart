import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_num.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/patient_history/card_patient.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/report.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/report.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/master_data.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/utils/other.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PatientHistoryPage extends StatefulWidget {
  final String wardID;
  final String deviceID;

  const PatientHistoryPage({
    Key? key,
    required this.wardID,
    required this.deviceID,
  }) : super(key: key);

  @override
  State<PatientHistoryPage> createState() => _PatientHistoryPageState();
}

class _PatientHistoryPageState extends State<PatientHistoryPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController patientNameController = TextEditingController();
  String? wardValue;
  List<OptionInt>? yearList;
  int? yearValue;
  List<OptionInt>? monthList;
  int? monthValue;

  Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory?
      reportPatientHistoryData;
  bool isLoadingReportPatientHistory = false;

  @override
  void initState() {
    super.initState();

    List<OptionInt> years = generateYearList(2020);
    List<OptionInt> months = getMonthList();
    setState(() {
      yearList = years;
      yearValue = years[0].value;

      monthList = months;
      monthValue = 6; // DateTime.now().month - 1;
    });

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await context.read<MasterDataState>().fetchAllWard(context);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final optionsWard = context.watch<MasterDataState>().optionsWard;
    if (wardValue == null &&
        widget.wardID != 'NULL' &&
        optionsWard != null &&
        optionsWard.isNotEmpty) {
      setState(() {
        wardValue = widget.wardID;
      });
    } else if (wardValue == null &&
        optionsWard != null &&
        optionsWard.isNotEmpty) {
      setState(() {
        wardValue = optionsWard[0].value;
      });
    }

    fetchReportPatientHistoryData();
  }

  Future<void> fetchReportPatientHistoryData() async {
    if (wardValue == null) return;
    if (yearValue == null) return;
    if (monthValue == null) return;

    setState(() {
      isLoadingReportPatientHistory = true;
    });
    try {
      Input$ReportPatientHistoryFilterInput filter =
          Input$ReportPatientHistoryFilterInput(
        patientName: patientNameController.text,
        wardID: wardValue,
        year: yearValue!,
        month: monthValue!,
        deviceID: widget.deviceID == 'NULL' ? null : widget.deviceID,
      );

      Query$ReportPatientHistory$reportPatientHistory? result =
          await ReportPatientHistoryService().reportPatientHistory(
        context: context,
        filter: filter,
      );

      if (result == null) return;

      result.when(
        reportPatientHistory: (result) {
          setState(() {
            reportPatientHistoryData = result;
          });
        },
        error: (errorData) {
          showSnackBarError(context, errorData.res_desc);
        },
        orElse: () {
          showSnackBarError(context, 'Invalid API reportPatientHistory');
        },
      );
    } catch (e) {
      print('error function reportPatientHistory, $e');
    } finally {
      setState(() {
        isLoadingReportPatientHistory = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final optionsWard = context.watch<MasterDataState>().optionsWard;
    final isLoadingWard = context.watch<MasterDataState>().isLoadingWard;

    return Scaffold(
      drawer: MedDrawer(),
      appBar: MedAppbar(title: 'Patient History'),
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
                        CardLayout(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Filter Expansion',
                                  style: Theme.of(context).appTexts.h5,
                                ),
                                SizedBox(height: 20),
                                InputText(
                                  label: 'Patient Name',
                                  textEditController: patientNameController,
                                ),
                                SizedBox(height: 10),
                                Skeletonizer(
                                  enabled: isLoadingWard,
                                  child: InputSelectText(
                                    label: 'Ward',
                                    options: optionsWard ?? [],
                                    value: wardValue,
                                    onChange: (value) {
                                      setState(() {
                                        wardValue = value!;
                                      });
                                    },
                                    disabled:
                                        widget.wardID == 'NULL' ? false : true,
                                  ),
                                ),
                                SizedBox(height: 10),
                                InputSelectInt(
                                  label: 'Year',
                                  options: yearList ?? [],
                                  value: yearValue,
                                  onChange: (value) {
                                    setState(() {
                                      yearValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                InputSelectInt(
                                  label: 'Month',
                                  options: monthList ?? [],
                                  value: monthValue,
                                  onChange: (value) {
                                    setState(() {
                                      monthValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                Button(
                                  text: 'ค้นหา',
                                  backgroundColor:
                                      Theme.of(context).appColors.primaryMain,
                                  textColor: Theme.of(context).appColors.white,
                                  onTap: () => fetchReportPatientHistoryData(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Raws',
                            style: Theme.of(context).appTexts.h3,
                          ),
                        ),
                        SizedBox(height: 10),
                        
                        if (isLoadingReportPatientHistory)
                          GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  flutterView.isRegularSmartphoneOrLess ? 1 : 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 370,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Skeletonizer(
                                  enabled: true,
                                  child: CardPatient(
                                    checkInDate: null,
                                    roomNo: '',
                                    patientName: '',
                                    wardName: '',
                                    username: '',
                                    checkOutDate: null,
                                    deviceID: '',
                                    reason: '',
                                    isHaveDocument: true,
                                  ));
                            },
                          )
                        else if (reportPatientHistoryData?.items?.length == 0)
                          Text('No data', style: Theme.of(context).appTexts.h5)
                        else
                          GridView.builder(
                            itemCount:
                                reportPatientHistoryData?.items?.length ?? 0,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  flutterView.isRegularSmartphoneOrLess ? 1 : 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 370,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              final d = reportPatientHistoryData?.items?[index];
                              return CardPatient(
                                checkInDate: d!.checkInDate,
                                roomNo: d.roomNo,
                                patientName: d.patientName,
                                wardName: d.wardName,
                                username: d.username,
                                checkOutDate: d.checkOutDate,
                                deviceID: d.deviceID,
                                reason: d.reason,
                                isHaveDocument: d.isHaveDocument,
                              );
                            },
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
