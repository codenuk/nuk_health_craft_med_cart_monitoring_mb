import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class MedAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? goBack;

  MedAppbar({
    required this.title,
    this.goBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .appTexts
            .h4
            .copyWith(color: Theme.of(context).appColors.white),
      ),
      backgroundColor: Theme.of(context).appColors.primaryMain,
      flexibleSpace: Image(
        image: AssetImage('assets/logos/bg_app_bar.png'),
        fit: BoxFit.fitHeight,
        alignment: Alignment.bottomRight,
      ),
      leading: goBack == false
          ? GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Icon(
                Icons.menu_rounded,
                color: Theme.of(context).appColors.white,
              ),
            )
          : GestureDetector(
              onTap: () {
                print(GoRouter.of(context));
                if (GoRouter.of(context).canPop()) {
                  context.pop(); // Go back to the previous page if possible
                } else {
                  print('Not found page');
                }
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).appColors.white,
              ),
            ),
    );
  }

  // This method must be overridden when implementing PreferredSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
