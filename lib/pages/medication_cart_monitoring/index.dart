import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/segment_button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/card_med_cart.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class MedicationCartMonitoringPage extends StatefulWidget {
  @override
  State<MedicationCartMonitoringPage> createState() =>
      _MedicationCartMonitoringPageState();
}

class _MedicationCartMonitoringPageState
    extends State<MedicationCartMonitoringPage> {
  TextEditingController searchController = TextEditingController();
  String? dropdownValue;
  String menuView = 'All';

  void onChangeMenu(String value) {
    setState(() {
      menuView = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;
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
                        ExpansionTile(
                          title: Text(
                            'Building 1 / ชั้น 1',
                            style: Theme.of(context).appTexts.subtitle.copyWith(
                                  color: Theme.of(context).appColors.white,
                                ),
                          ),
                          tilePadding: EdgeInsets.only(
                              left: 20, right: 10, top: 7, bottom: 7),
                          dense: true,
                          collapsedShape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          backgroundColor:
                              Theme.of(context).appColors.primaryMain,
                          collapsedBackgroundColor:
                              Theme.of(context).appColors.primaryMain,
                          initiallyExpanded: true,
                          iconColor: Theme.of(context).appColors.white,
                          collapsedIconColor: Theme.of(context).appColors.white,
                          children: [
                            Container(
                              color: Theme.of(context).appColors.gray3,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: ListTile(
                                contentPadding: EdgeInsets.only(left: 0),
                                dense: true,
                                horizontalTitleGap: 0,
                                minLeadingWidth: 0,
                                minVerticalPadding: 0,
                                title: ExpansionTile(
                                  title: Text(
                                    'Ward 1 (5)',
                                    style: Theme.of(context)
                                        .appTexts
                                        .subtitle
                                        .copyWith(
                                          color:
                                              Theme.of(context).appColors.text,
                                        ),
                                  ),
                                  tilePadding: EdgeInsets.only(
                                      left: 20, right: 10, top: 7, bottom: 7),
                                  dense: true,
                                  collapsedShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  backgroundColor: Theme.of(context)
                                      .appColors
                                      .primaryPressed,
                                  collapsedBackgroundColor: Theme.of(context)
                                      .appColors
                                      .primaryPressed,
                                  initiallyExpanded: true,
                                  iconColor: Theme.of(context).appColors.text,
                                  collapsedIconColor:
                                      Theme.of(context).appColors.text,
                                  children: [
                                    Container(
                                      color: Theme.of(context).appColors.gray4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      width: double.infinity,
                                      child: GridView.builder(
                                        itemCount: 3,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: flutterView
                                                  .isRegularSmartphoneOrLess
                                              ? 1
                                              : 2,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          childAspectRatio: 1,
                                          mainAxisExtent: 230,
                                        ),
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () => context.push(
                                                '/medication_cart_monitoring/SMC9-V1_L2410-0001'),
                                            child: CardMedCart(
                                              deviceID: 'SMC9-V1_L2410-0001',
                                              isActive: false,
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
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
