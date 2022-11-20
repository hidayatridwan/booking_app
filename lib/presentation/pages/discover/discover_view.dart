import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/component/bottom_menu.dart';
import 'package:booking_app/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:booking_app/presentation/pages/discover/settings/settings_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'discover_cubit.dart';
import 'discover_state.dart';

class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});

  final ApiClient apiClient = ApiClient();

  @override
  Widget build(BuildContext context) {
    apiClient.get(Uri.parse(
        'https://0a7062fd-49ee-4319-84ef-d1b8cedfd5b0.mock.pstmn.io/api/v1/trips'));
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
        Expanded(child: BlocBuilder<DiscoverCubit, DiscoverState>(
          builder: (context, state) {
            return state.selectedIndex == 0
                ? const TripsPage()
                : state.selectedIndex == 1
                    ? const FavoritePage()
                    : const SettingsPage();
          },
        )),
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
