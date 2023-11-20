// ignore_for_file: camel_case_types

import 'package:get/route_manager.dart';
import 'package:sales/sales.dart';
import 'package:sales/src/constants/route.constant.dart';

class SALES_ROUTER {
  static List<GetPage> routes = [
    GetPage(
      name: SALES_ROUTES.HOME,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: SALES_ROUTES.PROFILE,
      page: () => const ProfileScreen(),
    )
  ];
}
