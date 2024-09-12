import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_num.dart';
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

List<OptionInt> generateYearList(int startYear) {
  int currentYear = DateTime.now().year;
  List<OptionInt> yearList = [];

  // Ensure startYear <= currentYear
  for (int year = currentYear; year >= startYear; year--) {
    yearList.add(OptionInt(value: year, label: year.toString()));
  }
  return yearList;
}

List<OptionInt> getMonthList() {
  return [
    OptionInt(value: 0, label: '01-Jan'),
    OptionInt(value: 1, label: '02-Feb'),
    OptionInt(value: 2, label: '03-Mar'),
    OptionInt(value: 3, label: '04-Apr'),
    OptionInt(value: 4, label: '05-May'),
    OptionInt(value: 5, label: '06-Jun'),
    OptionInt(value: 6, label: '07-Jul'),
    OptionInt(value: 7, label: '08-Aug'),
    OptionInt(value: 8, label: '09-Sep'),
    OptionInt(value: 9, label: '10-Oct'),
    OptionInt(value: 10, label: '11-Nov'),
    OptionInt(value: 11, label: '12-Dec'),
  ];
}
