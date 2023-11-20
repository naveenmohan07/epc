import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales/src/controllers/home.controller.dart';
import 'package:sales/src/services/home.service.dart';
import 'package:sales/src/types/home.type.dart';
import 'package:shared/shared.dart';

final homeService = HomeService();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

IPost? post;
HomeController _hc = Get.put(HomeController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _hc.getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Obx(() {
              if (_hc.postStatus.value == API_STATUS.loading) {
                return CircularProgressIndicator();
              } else if (_hc.postStatus.value == API_STATUS.success) {
                return Text("POST => ${_hc.post.value.title}");
              } else {
                return Text("ERROR");
              }
            })),
      ),
    );
  }
}
