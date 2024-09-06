import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class InputText extends StatefulWidget {
  final String? label;
  final TextEditingController textEditController;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  const InputText({
    super.key,
    this.label,
    required this.textEditController,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
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
        TextFormField(
          controller: widget.textEditController,
          style: Theme.of(context)
              .appTexts
              .h5
              .copyWith(fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            filled: true,
            fillColor: Theme.of(context).appColors.background,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: widget.prefixIcon, //Icon at the beginning
            suffixIcon: widget.suffixIcon, //Icon at the end
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
