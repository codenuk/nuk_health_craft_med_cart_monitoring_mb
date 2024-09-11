import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

L10n getLangLocals(BuildContext context) {
  return L10n.of(context)!;
}

String formatUpdatedAt(String isoDateString) {
  // Parse the ISO 8601 string to DateTime
  DateTime dateTime = DateTime.parse(isoDateString);

  // Format the DateTime to the desired format
  String formattedDate = DateFormat('HH:mm - dd/MM/yyyy').format(dateTime);

  return formattedDate;
}