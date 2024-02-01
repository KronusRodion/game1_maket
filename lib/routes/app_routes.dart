import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/presentation/k0_screen/k0_screen.dart';
import 'package:kronuss23_s_application1/presentation/k1_screen/k1_screen.dart';
import 'package:kronuss23_s_application1/presentation/container_screen/container_screen.dart';
import 'package:kronuss23_s_application1/presentation/k4_screen/k4_screen.dart';
import 'package:kronuss23_s_application1/presentation/k5_screen/k5_screen.dart';
import 'package:kronuss23_s_application1/presentation/k6_screen/k6_screen.dart';
import 'package:kronuss23_s_application1/presentation/k7_screen/k7_screen.dart';
import 'package:kronuss23_s_application1/presentation/k8_screen/k8_screen.dart';
import 'package:kronuss23_s_application1/presentation/k9_screen/k9_screen.dart';
import 'package:kronuss23_s_application1/presentation/k10_screen/k10_screen.dart';
import 'package:kronuss23_s_application1/presentation/k11_screen/k11_screen.dart';
import 'package:kronuss23_s_application1/presentation/k12_screen/k12_screen.dart';
import 'package:kronuss23_s_application1/presentation/k13_screen/k13_screen.dart';
import 'package:kronuss23_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String k0Screen = '/k0_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Page = '/k2_page';

  static const String containerScreen = '/container_screen';

  static const String k4Screen = '/k4_screen';

  static const String k5Screen = '/k5_screen';

  static const String k6Screen = '/k6_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Screen = '/k8_screen';

  static const String k9Screen = '/k9_screen';

  static const String k10Screen = '/k10_screen';

  static const String k11Screen = '/k11_screen';

  static const String k12Screen = '/k12_screen';

  static const String k13Screen = '/k13_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    k0Screen: (context) => K0Screen(),
    k1Screen: (context) => K1Screen(),
    containerScreen: (context) => ContainerScreen(),
    k4Screen: (context) => K4Screen(),
    k5Screen: (context) => K5Screen(),
    k6Screen: (context) => K6Screen(),
    k7Screen: (context) => K7Screen(),
    k8Screen: (context) => K8Screen(),
    k9Screen: (context) => K9Screen(),
    k10Screen: (context) => K10Screen(),
    k11Screen: (context) => K11Screen(),
    k12Screen: (context) => K12Screen(),
    k13Screen: (context) => K13Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
