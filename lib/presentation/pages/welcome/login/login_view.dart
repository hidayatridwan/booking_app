import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/welcome/login/component/login.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_cubit.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return cubit.state.status == HttpStateStatus.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : cubit.state.status == HttpStateStatus.loading
                  ? const Center(
                      child: Text('Error'),
                    )
                  : SingleChildScrollView(
                      child: Column(
                      children: [
                        60.0.height,
                        const LoginImage(),
                        const LoginForm(),
                        const LoginFooter()
                      ],
                    ));
        },
      ),
    );
  }
}
