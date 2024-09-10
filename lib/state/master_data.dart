import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/select/select_text.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/location.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/location.dart';

class MasterDataState extends ChangeNotifier {
  List<Query$AllBuilding$allBuilding$$AllBuilding$items?>? listBuilding;
  List<OptionText>? optionsBuilding;
  bool isLoadingBuilding = false;

  Future<void> fetchAllBuilding(BuildContext context) async {
    isLoadingBuilding = true;
    notifyListeners();
    try {
      Query$AllBuilding$allBuilding? result =
          await AllBuildingService().allBuilding(
        context: context,
      );

      if (result == null) return;

      result.when(
        allBuilding: (result) {
          listBuilding = result.items;

          optionsBuilding = listBuilding
              ?.map((item) {
                if (item != null) {
                  return OptionText(
                    value: item.buildingID,
                    label: item.buildingName,
                  );
                }
                return null;
              })
              .where((element) => element != null)
              .cast<OptionText>()
              .toList();
        },
        error: (errorData) {
          showSnackBarError(context, errorData.res_desc);
        },
        orElse: () {
          showSnackBarError(context, 'Invalid API allBuilding');
        },
      );
    } catch (e) {
      print('error function allBuilding, $e');
    } finally {
      isLoadingBuilding = false;
      notifyListeners();
    }
  }
}
