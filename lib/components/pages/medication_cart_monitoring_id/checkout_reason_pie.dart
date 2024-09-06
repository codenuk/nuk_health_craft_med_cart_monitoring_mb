import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CheckoutReasonPieChart extends StatefulWidget {
  final double dischargePercent;
  final double movePatientToAnotherDrawerPercent;
  final double dischargeDeathPercent;
  final double movePatientToAnotherWardPercent;

  const CheckoutReasonPieChart({
    super.key,
    required this.dischargePercent,
    required this.movePatientToAnotherDrawerPercent,
    required this.dischargeDeathPercent,
    required this.movePatientToAnotherWardPercent,
  });

  @override
  State<StatefulWidget> createState() => CheckoutReasonPieChartState();
}

class CheckoutReasonPieChartState extends State<CheckoutReasonPieChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 50,
              startDegreeOffset: -90,
              sections: showingSections(
                widget.dischargePercent,
                widget.movePatientToAnotherDrawerPercent,
                widget.dischargeDeathPercent,
                widget.movePatientToAnotherWardPercent,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Theme.of(context).appColors.gray3,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logos/logo_rm_bg.png',
                    scale: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(
    double dischargePercent,
    double movePatientToAnotherDrawerPercent,
    double dischargeDeathPercent,
    double movePatientToAnotherWardPercent,
  ) {
    return List.generate(4, (i) {
      const radius = 30.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Theme.of(context).appColors.primaryMain,
            value: dischargePercent,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Theme.of(context).appColors.primaryBorder,
            value: movePatientToAnotherDrawerPercent,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: Theme.of(context).appColors.primaryPressed,
            value: dischargeDeathPercent,
            title: '',
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: Theme.of(context).appColors.primarySecond,
            value: movePatientToAnotherWardPercent,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
