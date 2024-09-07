import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

//to show our dialog
Future<void> showLoadingDialog(
  BuildContext context,
) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).appColors.white,
        ),
      );
    },
  );
}

// to hide our current dialog
void hideLoadingDialog(BuildContext context) {
  Navigator.of(context).pop();
}
