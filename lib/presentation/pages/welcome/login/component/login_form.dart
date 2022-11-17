import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/widget/form_input.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.h24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: AppFont.display3,
          ),
          16.0.height,
          const FormInput(
            label: 'Email',
          ),
          16.0.height,
          const FormInput(
            label: 'Password',
          ),
          16.0.height,
          PrimaryButton(
            onPressed: () {},
            text: 'Login',
            width: double.infinity,
          ),
          16.0.height,
        ],
      ),
    );
  }
}
