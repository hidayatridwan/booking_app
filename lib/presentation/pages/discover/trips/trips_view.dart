import 'package:booking_app/presentation/pages/discover/trips/component/trips_roomies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/trips_matches.dart';
import 'trips_cubit.dart';
import 'trips_state.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TripsCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);

    return Column(
      children: const [
        TripsRoomies(),
        TripsMatches()
      ],
    );
  }
}


