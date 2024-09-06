import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class GenderPieChart extends StatefulWidget {
  final double femalePercent;
  final double malePercent;

  const GenderPieChart({
    super.key,
    required this.femalePercent,
    required this.malePercent,
  });

  @override
  State<StatefulWidget> createState() => GenderPieChartState();
}

class GenderPieChartState extends State<GenderPieChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 50,
              startDegreeOffset: -90,
              sections: showingSections(widget.femalePercent, widget.malePercent),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/male_female.png',
                    width: 60,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(double femalePercent, double malePercent) {
    return List.generate(2, (i) {
      const radius = 30.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Theme.of(context).appColors.stateWarning,
            value: femalePercent,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Theme.of(context).appColors.primaryHover,
            value: malePercent,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
