import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class WelcomeDoneTitle extends StatelessWidget {
  const WelcomeDoneTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        children: [
          Text(
            'Find Your Roomie',
            style: AppFont.heading1,
          ),
          8.0.height,
          Text(
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
            style: AppFont.paragraphMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
