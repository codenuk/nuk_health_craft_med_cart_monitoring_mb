import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

// Function to show a SnackBar with auto-close duration
void showSnackBarSuccess(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message, style: Theme.of(context).appTexts.subtitle),
    backgroundColor: Theme.of(context).appColors.stateSuccess,
    duration: Duration(seconds: 3), // The SnackBar will close after 3 seconds
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showSnackBarError(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message, style: Theme.of(context).appTexts.subtitle),
    backgroundColor: Theme.of(context).appColors.stateError,
    duration: Duration(seconds: 3), // The SnackBar will close after 3 seconds
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
