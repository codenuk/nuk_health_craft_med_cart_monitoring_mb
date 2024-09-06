import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class StatusConfig {
  final Color decorationColor;
  final Color iconColor;
  final Color textColor;
  final String text;

  const StatusConfig({
    required this.decorationColor,
    required this.iconColor,
    required this.textColor,
    required this.text,
  });
}

class CustomizeChip extends StatelessWidget {
  final IconData icon;
  final String status;
  const CustomizeChip({
    super.key,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, StatusConfig> listStatus = {
      'Active': StatusConfig(
        decorationColor: Theme.of(context).appColors.stateSuccessSecond,
        iconColor: Theme.of(context).appColors.stateSuccess,
        textColor: Theme.of(context).appColors.stateSuccess,
        text: 'Active',
      ),
      'In-Active': StatusConfig(
        decorationColor: Theme.of(context).appColors.stateErrorSecond,
        iconColor: Theme.of(context).appColors.stateError,
        textColor: Theme.of(context).appColors.stateError,
        text: 'Inactive',
      ),
    };

    final statusData = listStatus[status] ?? listStatus['Active'];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: statusData?.decorationColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: statusData?.iconColor,
            size: 20,
          ),
          SizedBox(width: 5),
          Text(
            statusData?.text ?? '',
            style: Theme.of(context).appTexts.bodySm.copyWith(
                  fontWeight: FontWeight.bold,
                  color: statusData?.textColor,
                ),
          ),
        ],
      ),
    );
  }
}
