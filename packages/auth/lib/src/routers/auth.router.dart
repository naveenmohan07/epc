// ignore_for_file: camel_case_types

import 'package:auth/auth.dart';
import 'package:get/get.dart';

class AUTH_ROUTER {
  static List<GetPage> routes = [
    GetPage(
      name: AUTH_ROUTES.LOGIN,
      page: () => const LoginScreen(),
    ),
  ];
}
