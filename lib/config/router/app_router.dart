import 'package:auto_route/auto_route.dart';
import 'package:booking_app/presentation/pages/discover/discover_view.dart';
import 'package:booking_app/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:booking_app/presentation/pages/discover/settings/settings_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/detail/detail_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_view.dart';
import 'package:booking_app/presentation/pages/welcome/login/login_view.dart';
import 'package:booking_app/presentation/pages/welcome/register/register_view.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, path: '/welcome', initial: true),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trips'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
    AutoRoute(page: SettingsPage, path: '/settings'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
