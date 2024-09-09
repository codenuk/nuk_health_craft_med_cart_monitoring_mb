import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/button.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/base.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/input/password.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/loading_dialog.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/login.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/layouts/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/authentication.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/validated/others.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> onSubmit() async {
    showLoadingDialog(context);

    try {
      if (_formKey.currentState!.validate()) {
        Mutation$login$login? loginResult = await LoginService().login(
          input: Input$LoginInput(
            username: usernameController.text,
            password: passwordController.text,
          ),
        );

        if (loginResult == null) return;

        loginResult.when(
          login: (loginData) {
            context
                .read<GlobalState>()
                .setCredential(loginData.accessToken, loginData.refreshToken);

            showSnackBarSuccess(context, 'Login Success');
            context.go('/');
          },
          error: (errorData) {
            showSnackBarError(context, errorData.res_desc);
          },
          orElse: () {
            showSnackBarError(context, 'Invalid API login');
          },
        );
      }
    } catch (e) {
      print('error function login, $e');
    } finally {
      hideLoadingDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Layout(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: flutterView.logicalHeight * 0.1),
                  Image.asset(
                    'assets/logos/logo.png',
                    filterQuality: FilterQuality.high,
                    scale: flutterView.isRegularSmartphoneOrLess ? 1.2 : 0.9,
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: flutterView.isRegularSmartphoneOrLess
                        ? double.infinity
                        : 450,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      color: Theme.of(context).appColors.white,
                      boxShadow: Theme.of(context).appVariable.boxShadow,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login to your HealthCraft Account',
                            style: Theme.of(context).appTexts.h4,
                          ),
                          SizedBox(height: 32),
                          InputText(
                            label: 'Username',
                            textEditController: usernameController,
                            validator: (value) => validateTextIsEmpty(value),
                          ),
                          SizedBox(height: 5),
                          InputPassword(
                            label: 'Password',
                            textEditController: passwordController,
                            validator: (value) => validateTextIsEmpty(value),
                          ),
                          SizedBox(height: 50),
                          Button(
                            text: 'Sign in',
                            backgroundColor:
                                Theme.of(context).appColors.primaryMain,
                            textColor: Theme.of(context).appColors.white,
                            onTap: onSubmit,
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text:
                                  'By logging into the HealthCraft application you are agreeing to the ',
                              style: Theme.of(context).appTexts.bodySm.copyWith(
                                    color: Theme.of(context).appColors.black4,
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms of Service.',
                                  style: Theme.of(context)
                                      .appTexts
                                      .bodySm
                                      .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      debugPrint("go to link");
                                    },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.easeInOut)
                      .slide(
                        begin: const Offset(0, 0.5),
                        end: const Offset(0, 0),
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut,
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
