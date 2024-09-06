import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class OptionNum {
  final num value;
  final String label;

  const OptionNum({
    required this.value,
    required this.label,
  });
}

class InputSelectNum extends StatefulWidget {
  final String? label;
  final num? value;
  final List<OptionNum> options;
  final void Function(dynamic) onChange;
  final String? Function(num?)? validator;

  const InputSelectNum({
    super.key,
    this.label,
    required this.options,
    required this.value,
    required this.onChange,
    this.validator,
  });

  @override
  State<InputSelectNum> createState() => _InputSelectNumState();
}

class _InputSelectNumState extends State<InputSelectNum> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label?.isNotEmpty ?? false)
          Text(
            widget.label!,
            style: Theme.of(context).appTexts.subtitle.copyWith(
                  color: _hasError
                      ? Theme.of(context).appColors.stateError
                      : Theme.of(context).appColors.text,
                ),
          ),
        DropdownButtonFormField(
          dropdownColor: Theme.of(context).appColors.background,
          style: Theme.of(context).appTexts.h5.copyWith(
                fontWeight: FontWeight.normal,
                color: Theme.of(context).appColors.text,
              ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            filled: true,
            fillColor: Theme.of(context).appColors.background,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).appColors.gray3,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).appColors.gray3,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).appColors.gray3,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).appColors.stateError,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorStyle: Theme.of(context).appTexts.body,
          ),
          onChanged: widget.onChange,
          items: widget.options.map((value) {
            return DropdownMenuItem(
              value: value.value,
              child: Text(
                value.label,
                style: Theme.of(context).appTexts.h5.copyWith(
                fontWeight: FontWeight.normal,
                color: Theme.of(context).appColors.text,
              ),
              ),
            );
          }).toList(),
          validator: (value) {
            final result = widget.validator?.call(value);
            setState(() {
              _hasError = result != null;
            });
            return result;
          },
        )
      ],
    );
  }
}
