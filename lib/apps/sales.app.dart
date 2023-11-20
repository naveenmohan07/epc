import 'package:flutter/material.dart';
import 'package:sales/sales.dart';

// final logger = Logger(logName: "User_App");

class SalesApp extends StatefulWidget {
  const SalesApp({super.key});

  @override
  State<SalesApp> createState() => _SalesAppState();
}

class _SalesAppState extends State<SalesApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User"),
        ),
        body: const TabBarView(
          children: [HomeScreen(), ProfileScreen()],
        ),
        bottomNavigationBar: const TabBar(
          labelColor: Colors.teal,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
