import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/component/bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'discover_cubit.dart';
import 'discover_state.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink5,
      body: Column(children: [
        const Expanded(child: SizedBox()),
        BlocBuilder<DiscoverCubit, DiscoverState>(
          builder: (context, state) {
            return BottomMenu(
              cubit: cubit,
            );
          },
        )
      ]),
    );
  }
}
