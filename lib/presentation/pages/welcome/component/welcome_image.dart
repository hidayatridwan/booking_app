import 'package:booking_app/config/assets/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      ImageString.giantPhone,
      fit: BoxFit.contain,
    ));
  }
}
