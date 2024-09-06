import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class DispensingTypePieChart extends StatefulWidget {
  final double qrCodePercent;
  final double manualPercent;

  const DispensingTypePieChart({
    super.key,
    required this.qrCodePercent,
    required this.manualPercent,
  });

  @override
  State<StatefulWidget> createState() => DispensingTypePieChartState();
}

class DispensingTypePieChartState extends State<DispensingTypePieChart>  {
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
              sections: showingSections(widget.qrCodePercent, widget.manualPercent),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${widget.qrCodePercent}%', style: Theme.of(context).appTexts.h3),
                  Text(
                    'Open Locker',
                    style: Theme.of(context)
                        .appTexts
                        .body
                        .copyWith(color: Theme.of(context).appColors.gray1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(double qrCodePercent, double manualPercent) {
    return List.generate(2, (i) {
      const radius = 30.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Theme.of(context).appColors.stateSuccess,
            value: qrCodePercent,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Theme.of(context).appColors.gray3,
            value: manualPercent,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
