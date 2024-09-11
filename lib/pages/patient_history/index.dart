import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_num.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/pages/patient_history/card_patient.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/card_layout.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class PatientHistoryPage extends StatefulWidget {
  final String wardID;

  const PatientHistoryPage({
    Key? key,
    required this.wardID,
  }) : super(key: key);

  @override
  State<PatientHistoryPage> createState() => _PatientHistoryPageState();
}

class _PatientHistoryPageState extends State<PatientHistoryPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController patientNameController = TextEditingController();
  String? wardValue;
  num? yearValue;
  num? monthValue;

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

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
                                InputSelectText(
                                  label: 'Ward',
                                  options: [
                                    OptionText(value: 'Test', label: 'Test'),
                                    OptionText(value: 'Test 2', label: 'Test 2')
                                  ],
                                  value: wardValue,
                                  onChange: (value) {
                                    setState(() {
                                      wardValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                InputSelectNum(
                                  label: 'Year',
                                  options: [
                                    OptionNum(value: 2024, label: '2024'),
                                    OptionNum(value: 2023, label: '2023'),
                                  ],
                                  value: yearValue,
                                  onChange: (value) {
                                    setState(() {
                                      yearValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                InputSelectNum(
                                  label: 'Month',
                                  options: [
                                    OptionNum(value: 0, label: '01-Jan'),
                                    OptionNum(value: 1, label: '02-Feb'),
                                  ],
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
                                  onTap: () => null,
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
                        GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: flutterView.isRegularSmartphoneOrLess ? 1 : 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 370,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return CardPatient();
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
