import 'package:epc/apps/user.app.dart';
import 'package:epc/constants/app.route.constant.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shared/shared.dart';
import 'package:user/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ApplicationTheme.lightTheme,
      initialRoute: SHARED_ROUTES.SPLASH_SCREEN,
      getPages: [
        ...SHARED_ROUTER.routes,
        GetPage(
            name: APP_ROUTES.USER,
            page: () => const UserApp(),
            children: USER_ROUTER.routes)
      ],
    );
  }
}
