import 'package:booking_app/config/assets/image_string.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:flutter/material.dart';

class WelcomeDoneImage extends StatelessWidget {
  const WelcomeDoneImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(ImageString.avatarAndBackdrop),
    ));
  }
}
