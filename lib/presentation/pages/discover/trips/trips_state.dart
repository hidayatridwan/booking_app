import 'package:booking_app/config/config.dart';

import '../../../../data/model/trip/trip.dart';

class TripsState {
  List<Trip> roomies = [];
  List<Trip> matches = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
