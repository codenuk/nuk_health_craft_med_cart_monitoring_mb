import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';

class InputPassword extends StatefulWidget {
  final String label;
  final TextEditingController textEditController;
  final String? Function(String?)? validator;

  const InputPassword({
    super.key,
    required this.label,
    required this.textEditController,
    this.validator,
  });

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool isError = false;
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).appTexts.subtitle.copyWith(
              color: isError
                  ? Theme.of(context).appColors.stateError
                  : Theme.of(context).appColors.text),
        ),
        TextFormField(
          controller: widget.textEditController,
          style: Theme.of(context)
              .appTexts
              .h5
              .copyWith(fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isShow = !isShow;
                });
              },
              child: Icon(
                isShow
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
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
          validator: (value) {
            final result = widget.validator?.call(value);
            setState(() {
              isError = result != null;
            });
            return result;
          },
          obscureText: isShow,
        )
      ],
    );
  }
}
