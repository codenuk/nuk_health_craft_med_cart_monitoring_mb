import 'package:flutter/material.dart';

class AppVariableTheme extends ThemeExtension<AppVariableTheme> {
  final List<BoxShadow> boxShadow;

  const AppVariableTheme._internal({
    required this.boxShadow,
  });

  factory AppVariableTheme.main() => AppVariableTheme._internal(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            offset: Offset(0.1, 17),
            blurRadius: 50,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(0, 0.1),
            blurRadius: 40,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.04),
            offset: Offset(0, 0.1),
            blurRadius: 30,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.04),
            offset: Offset(0, 0.1),
            blurRadius: 20,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.03),
            offset: Offset(0, 0.1),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.02),
            offset: Offset(0, 0.1),
            blurRadius: 5,
          ),
        ],
      );

  @override
  ThemeExtension<AppVariableTheme> copyWith() {
    return AppVariableTheme._internal(
      boxShadow: boxShadow,
    );
  }

  @override
  ThemeExtension<AppVariableTheme> lerp(
          covariant ThemeExtension<AppVariableTheme>? other, double t) =>
      this;
}
