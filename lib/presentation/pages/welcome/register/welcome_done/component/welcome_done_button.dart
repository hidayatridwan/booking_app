import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:flutter/material.dart';

class WelcomeDoneButton extends StatelessWidget {
  const WelcomeDoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        text: 'Let\'s Go',
        onPressed: () {},
        width: double.infinity,
      ),
    );
  }
}
