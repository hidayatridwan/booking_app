import 'package:flutter/material.dart';
import 'package:booking_app/config/config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/model/trip/trip.dart';
import '../trips_cubit.dart';

class TripsMatches extends StatelessWidget {
  const TripsMatches({Key? key, required this.matches}) : super(key: key);
  final List<Trip> matches;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_header(), _matchesList(context)],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(left: AppDimen.w16, right: AppDimen.w16),
      child: Text(
        'Other Matches',
        style: AppFont.display3.copyWith(color: AppColor.ink1),
      ),
    );
  }

  Widget _matchesList(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);

    return Expanded(
        child: cubit.state.status == HttpStateStatus.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : cubit.state.status == HttpStateStatus.error
                ? const Center(
                    child: Text('Error'),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return _matchesItem(context, matches[index]);
                    },
                    itemCount: matches.length,
                    scrollDirection: Axis.horizontal,
                  ));
  }

  Widget _matchesItem(BuildContext context, Trip trip) {
    return Container(
      margin: EdgeInsets.only(
          left: AppDimen.h16, top: AppDimen.h24, bottom: AppDimen.h16),
      padding: EdgeInsets.all(AppDimen.h16),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w40,
      decoration: BoxDecoration(
          color: AppColor.ink6,
          borderRadius: BorderRadius.circular(AppDimen.w8)),
      child: Column(
        children: [
          Expanded(child: Image.asset(ImageString.plants)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trip.name ?? '',
                style:
                    AppFont.paragraphLargeBold.copyWith(color: AppColor.ink2),
              ),
              Text(
                trip.price ?? '',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink2),
              )
            ],
          )
        ],
      ),
    );
  }
}
