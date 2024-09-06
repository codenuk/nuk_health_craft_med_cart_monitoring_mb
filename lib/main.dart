import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/launchpad/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/login/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/medication_cart_monitoring/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/medication_cart_monitoring_id/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/patient_history/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/pages/splash/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/environment.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/index.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/breakpoint.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/color.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/font.dart';
import 'package:health_craft_med_cart_monitoring_mb/theme/variables.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await dotenv.load(fileName: Environment.filename);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;

    return ChangeNotifierProvider(
      create: (context) => GlobalState(),
      builder: (context, child) {
        return FutureBuilder(
          future: context.read<GlobalState>().initialSet(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Color(0xFFFFFFFF),
                  child: Image.asset('assets/logos/splash_logo.png'),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error loading theme'),
              );
            } else {
              final theme = context.watch<GlobalState>().theme;
              final lang = context.watch<GlobalState>().lang;

              return MultiProvider(
                providers: [
                  ChangeNotifierProvider(create: (_) => null),
                ],
                child: MaterialApp.router(
                  title: 'Namer App',
                  debugShowCheckedModeBanner: false,
                  theme: Theme.of(context).copyWith(
                    extensions: [
                      theme == 'LIGHT'
                          ? AppColorsTheme.light()
                          : AppColorsTheme.dark(),
                      flutterView.isRegularSmartphoneOrLess
                          ? AppTextsTheme.mobile()
                          : AppTextsTheme.tablet(),
                      AppVariableTheme.main(),
                    ],
                  ),
                  routerConfig: _router,
                  locale: lang == 'EN' ? Locale('en', 'EN') : Locale('th', 'TH'),
                  localizationsDelegates: [
                    L10n.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: [
                    Locale('en', 'EN'),
                    Locale('th', 'TH'),
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }
}

extension ThemeDataExtended on ThemeData {
  AppColorsTheme get appColors => extension<AppColorsTheme>()!;
  AppTextsTheme get appTexts => extension<AppTextsTheme>()!;
  AppVariableTheme get appVariable => extension<AppVariableTheme>()!;
}

final _router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      name: 'splash',
      path: '/splash',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      name: 'launchpad',
      path: '/',
      builder: (context, state) => LaunchpadPage(),
    ),
    GoRoute(
      name: 'medication_cart_monitoring',
      path: '/medication_cart_monitoring',
      builder: (context, state) => MedicationCartMonitoringPage(),
    ),
    GoRoute(
      name: 'medication_cart_monitoring_id',
      path: '/medication_cart_monitoring/:id',
      builder: (context, state) {
        final id = state.pathParameters["id"]!;
        return MedicationCartMonitoringIDPage(id: id);
      },
    ),
    GoRoute(
      name: 'patient_history',
      path: '/patient_history',
      builder: (context, state) {
        return PatientHistoryPage();
      },
    ),
  ],
);
