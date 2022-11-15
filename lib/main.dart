// import 'package:booking_app/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Poppins'),
          home: const WelcomePage(),
        );
      },
    );
  }
}
