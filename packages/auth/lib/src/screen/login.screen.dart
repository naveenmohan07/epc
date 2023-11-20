import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

final logger = Logger(logName: "LoginScreen");

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppInput(),
              AppInput(),
              AppButton(
                buttonText: "Login",
                buttonCallback: () {
                  logger.info("button click event");
                },
              )
            ],
          )),
    );
  }
}
