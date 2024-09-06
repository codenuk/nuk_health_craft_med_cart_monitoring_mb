import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/app_bar.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/shares/drawer.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';

class Menu {
  final String title;
  final String image;
  final void Function() action;

  Menu({
    required this.title,
    required this.image,
    required this.action,
  });
}

class LaunchpadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    final List<Menu> menu = [
      Menu(
        title: 'Dashboard',
        image: 'assets/images/launchpad/Dashboard.png',
        action: () => null,
      ),
      Menu(
        title: 'Medication Cart Monitoring',
        image: 'assets/images/launchpad/MedicationCartMonitoring.png',
        action: () => context.go('/medication_cart_monitoring'),
      ),
      Menu(
        title: 'Medication Cart & Location',
        image: 'assets/images/launchpad/MedicationCartLocation.png',
        action: () => null,
      ),
      Menu(
        title: 'Location Master Data',
        image: 'assets/images/launchpad/LocationMasterData.png',
        action: () => null,
      ),
      Menu(
        title: 'Medication Cart Master Data',
        image: 'assets/images/launchpad/MedicationCartMasterData.png',
        action: () => null,
      ),
      Menu(
        title: 'User List',
        image: 'assets/images/launchpad/UserList.png',
        action: () => null,
      ),
      Menu(
        title: 'User Permissions',
        image: 'assets/images/launchpad/UserPermissions.png',
        action: () => null,
      ),
      Menu(
        title: 'Patient History',
        image: 'assets/images/launchpad/Dashboard.png',
        action: () => context.go('/patient_history'),
      ),
      Menu(
        title: 'Activity Logs',
        image: 'assets/images/launchpad/ActivityLogs.png',
        action: () => null,
      ),
      Menu(
        title: 'Setting',
        image: 'assets/images/launchpad/Setting.png',
        action: () => null,
      ),
    ];

    return Scaffold(
      drawer: MedDrawer(),
      appBar: MedAppbar(title: 'Launchpad'),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logos/bg.png"),
              scale: 1.3,
              alignment: Alignment.bottomRight),
          color: Theme.of(context).appColors.gray4,
        ),
        child: Layout(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Thursday, April 18, 2024",
                    style: Theme.of(context).appTexts.h4,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Welcome to Medication Cart Monitoring",
                    style: Theme.of(context).appTexts.h3,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Hi, Admin",
                    style: Theme.of(context).appTexts.h3,
                    textAlign: TextAlign.center,
                  ),
                  GridView.count(
                      childAspectRatio: flutterView.isRegularSmartphoneOrLess
                          ? (1 / 1.2)
                          : (1 / 0.9),
                      crossAxisCount:
                          flutterView.isRegularSmartphoneOrLess ? 3 : 4,
                      crossAxisSpacing: 0,
                      padding:
                          EdgeInsets.symmetric(vertical: 20),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ...menu.map((d) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: d.action,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(24),
                                    ),
                                    color: Theme.of(context).appColors.white,
                                  ),
                                  padding: EdgeInsets.all(19),
                                  child: Image.asset(d.image),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                d.title,
                                style: Theme.of(context).appTexts.body,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        })
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
