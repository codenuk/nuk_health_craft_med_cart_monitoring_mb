import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/index.dart';
import 'package:provider/provider.dart';
import 'package:health_craft_med_cart_monitoring_mb/utils/other.dart';

class ChildItem {
  final String title;
  final void Function() action;

  ChildItem({
    required this.title,
    required this.action,
  });
}

class ExpansionTileData {
  final String title;
  final IconData icon;
  final List<ChildItem> children;

  ExpansionTileData({
    required this.title,
    required this.icon,
    required this.children,
  });
}

class MedDrawer extends StatelessWidget {
  const MedDrawer({super.key});

  void handleLogout(BuildContext context) async {
    await context.read<GlobalState>().clearCredential();
    context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    final List<ExpansionTileData> menu = [
      ExpansionTileData(
        title: 'Home',
        icon: Icons.home,
        children: [
          ChildItem(
            title: 'Launchpad',
            action: () {
              context.go('/');
            },
          ),
        ],
      ),
      ExpansionTileData(
        title: 'Overview Dashboard',
        icon: Icons.donut_large,
        children: [
          ChildItem(
            title: 'Medication Cart Monitoring',
            action: () {
              context.go('/medication_cart_monitoring');
            },
          ),
        ],
      ),
      ExpansionTileData(
        title: 'Reports',
        icon: Icons.description,
        children: [
          ChildItem(
            title: 'Patient History',
            action: () {
              context.go('/patient_history/NULL/NULL');
            },
          ),
        ],
      ),
    ];

    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      backgroundColor: Theme.of(context).appColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).appColors.primaryMain,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            width: double.infinity,
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Theme.of(context).appColors.gray1,
                    size: 35.0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'พว.วรรณา ศิริพฤกพงค์',
                        style: Theme.of(context).appTexts.subtitle.copyWith(
                              color: Theme.of(context).appColors.white,
                              height: 0,
                            ),
                      ),
                      Text(
                        'วันที่ 23/11/2022 เวลา 10.13 น.',
                        style: Theme.of(context).appTexts.body.copyWith(
                              color: Theme.of(context).appColors.white,
                              height: 0,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => Scaffold.of(context).closeDrawer(),
                        child: Icon(
                          Icons.close,
                          color: Theme.of(context).appColors.white,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).appColors.white,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Text(
                    'OVERVIEW',
                    style: Theme.of(context).appTexts.body.copyWith(
                          color: Theme.of(context).appColors.black4,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  ...menu.map(
                    (d) {
                      return ExpansionTile(
                        title: Text(
                          d.title,
                          style: Theme.of(context).appTexts.subtitle,
                        ),
                        leading: Icon(d.icon, size: 24.0),
                        iconColor: Theme.of(context).appColors.primaryMain,
                        childrenPadding: EdgeInsets.only(left: 40),
                        tilePadding: EdgeInsets.only(left: 0),
                        dense: true,
                        shape: Border(),
                        children: d.children.isNotEmpty
                            ? d.children.map((c) {
                                return ListTile(
                                  title: Text(
                                    c.title,
                                    style: Theme.of(context)
                                        .appTexts
                                        .subtitle
                                        .copyWith(
                                            fontWeight: FontWeight.normal),
                                  ),
                                  contentPadding: EdgeInsets.only(left: 0),
                                  dense: true,
                                  horizontalTitleGap: 0,
                                  minLeadingWidth: 0,
                                  minVerticalPadding: 0,
                                  onTap: c.action,
                                );
                              }).toList()
                            : [],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Divider(thickness: 1, color: Theme.of(context).appColors.gray3),
          Container(
            color: Theme.of(context).appColors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SETTING',
                  style: Theme.of(context).appTexts.body.copyWith(
                        color: Theme.of(context).appColors.black4,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 17),
                GestureDetector(
                  onTap: () {
                    context.read<GlobalState>().changeLang();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: Theme.of(context).appColors.gray5,
                      ),
                      SizedBox(width: 17),
                      Text(
                        getLangLocals(context).switchLang,
                        style: Theme.of(context).appTexts.subtitle,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                GestureDetector(
                  onTap: () {
                    context.read<GlobalState>().changeTheme();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.color_lens,
                        color: Theme.of(context).appColors.gray5,
                      ),
                      SizedBox(width: 17),
                      Text(
                        'Switch Theme',
                        style: Theme.of(context).appTexts.subtitle,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                GestureDetector(
                  onTap: () => null,
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Theme.of(context).appColors.gray5,
                      ),
                      SizedBox(width: 17),
                      Text(
                        'Setting',
                        style: Theme.of(context).appTexts.subtitle,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => handleLogout(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Theme.of(context).appColors.stateError,
                      ),
                      SizedBox(width: 17),
                      Text(
                        'Logout',
                        style: Theme.of(context).appTexts.subtitle.copyWith(
                            color: Theme.of(context).appColors.stateError),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Theme.of(context).appColors.gray3),
          Container(
            color: Theme.of(context).appColors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'APP VERSION',
                  style: Theme.of(context).appTexts.body.copyWith(
                        color: Theme.of(context).appColors.black4,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '1.0.1',
                  style: Theme.of(context).appTexts.body.copyWith(
                        color: Theme.of(context).appColors.black4,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
