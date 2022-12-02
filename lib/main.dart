import 'package:booking_app/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'config/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
  await PrefHelper.instance.init();
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    debugPrint(
        'name: ${event.level.name}, time: ${event.time}, message: ${event.message}');
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<AppRouter>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Poppins'),
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
