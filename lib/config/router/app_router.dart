import 'package:auto_route/auto_route.dart';
import 'package:booking_app/presentation/pages/welcome/login/login_view.dart';
import 'package:booking_app/presentation/pages/welcome/register/register_view.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, path: '/', initial: true, children: [
      AutoRoute(page: WelcomePage, path: '/'),
      AutoRoute(page: LoginPage, path: '/login'),
      AutoRoute(page: RegisterPage, path: '/register'),
    ]),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
