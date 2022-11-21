import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/widget/form_input.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

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
          FormInput(
            label: 'Email',
            controller: cubit.state.emailController,
          ),
          16.0.height,
          FormInput(
            label: 'Password',
            controller: cubit.state.passwordController,
          ),
          16.0.height,
          PrimaryButton(
            onPressed: cubit.login,
            text: 'Login',
            width: double.infinity,
          ),
          16.0.height,
        ],
      ),
    );
  }
}
