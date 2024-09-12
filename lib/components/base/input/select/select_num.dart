import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class OptionInt {
  final int value;
  final String label;

  const OptionInt({
    required this.value,
    required this.label,
  });
}

class InputSelectInt extends StatefulWidget {
  final String? label;
  final int? value;
  final List<OptionInt> options;
  final void Function(dynamic) onChange;
  final String? Function(num?)? validator;
  final bool disabled;

  const InputSelectInt({
    super.key,
    this.label,
    required this.options,
    required this.value,
    required this.onChange,
    this.validator,
    this.disabled = false,
  });

  @override
  State<InputSelectInt> createState() => _InputSelectIntState();
}

class _InputSelectIntState extends State<InputSelectInt> {
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
          isExpanded: true,
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
          value: widget.value,
          onChanged: widget.disabled ? null : widget.onChange,
          selectedItemBuilder: (BuildContext context) => widget.options
              .map(
                (option) => Text(
                  option.label,
                  style: Theme.of(context).appTexts.h5.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).appColors.text,
                      ),
                ),
              )
              .toList(),
          items: widget.options.map((option) {
                        final bool isSelected = widget.value == option.value;

            return DropdownMenuItem(
              value: option.value,
              child: Text(
                option.label,
                style: Theme.of(context).appTexts.h5.copyWith(
                    fontWeight: isSelected ? FontWeight.bold :FontWeight.normal,
                      color: isSelected
                          ? Theme.of(context).appColors.primaryMain
                          : Theme.of(context).appColors.text,
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
