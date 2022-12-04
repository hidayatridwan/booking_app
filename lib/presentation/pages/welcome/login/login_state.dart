import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class LoginState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  HttpStateStatus status = HttpStateStatus.idle;

  LoginState init() {
    return LoginState();
  }

  LoginState clone() {
    return LoginState();
  }
}
