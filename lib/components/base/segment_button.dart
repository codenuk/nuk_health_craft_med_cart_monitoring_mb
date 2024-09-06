import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class CustomizeSegmentButton extends StatefulWidget {
  final String menuView;
  final ValueChanged<String> onChanged;
  final List<String> listMenu;

  const CustomizeSegmentButton({
    super.key,
    required this.menuView,
    required this.onChanged,
    required this.listMenu,
  });

  @override
  State<CustomizeSegmentButton> createState() => _CustomizeSegmentButtonState();
}

class _CustomizeSegmentButtonState extends State<CustomizeSegmentButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...widget.listMenu.asMap().entries.map(
          (entry) {
            int i = entry.key;
            var d = entry.value;

            return Flexible(
              fit: FlexFit.loose,
              child: GestureDetector(
                onTap: () => widget.onChanged(d),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: d == widget.menuView
                        ? Theme.of(context).appColors.primaryPressed
                        : Theme.of(context).appColors.background,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          i == 0 ? Radius.circular(12) : Radius.circular(0),
                      topLeft:
                          i == 0 ? Radius.circular(12) : Radius.circular(0),
                      bottomRight: i == widget.listMenu.length - 1
                          ? Radius.circular(12)
                          : Radius.circular(0),
                      topRight: i == widget.listMenu.length - 1
                          ? Radius.circular(12)
                          : Radius.circular(0),
                    ),
                    border: i != widget.listMenu.length - 1
                        ? Border(
                            right: BorderSide(
                              width: 1.0,
                              color: Theme.of(context).appColors.gray6,
                            ),
                          )
                        : null,
                  ),
                  child: Text(
                    d,
                    style: Theme.of(context).appTexts.body.copyWith(
                          fontWeight: FontWeight.bold,
                          color: d == widget.menuView
                              ? Theme.of(context).appColors.text
                              : Theme.of(context).appColors.gray6,
                        ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
