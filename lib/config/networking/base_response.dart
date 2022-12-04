import 'package:booking_app/data/model/trip/trip.dart';

import '../../data/model/auth/login.dart';

class BaseResponse {
  BaseResponse({
    this.message,
    this.result,
  });

  BaseResponse.fromJson(dynamic json) {
    message = json['message'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  String? message;
  Result? result;

  BaseResponse copyWith({
    String? message,
    Result? result,
  }) =>
      BaseResponse(
        message: message ?? this.message,
        result: result ?? this.result,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (result != null) {
      map['result'] = result?.toJson();
    }
    return map;
  }
}

class Result {
  Result({
    this.login,
    this.trip,
    this.roomies,
    this.matches,
  });

  Result.fromJson(dynamic json) {
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    trip = json['trip'] != null ? Trip.fromJson(json['trip']) : null;
    if (json['roomies'] != null) {
      roomies = [];
      json['roomies'].forEach((v) {
        roomies?.add(Trip.fromJson(v));
      });
    }
    if (json['matches'] != null) {
      matches = [];
      json['matches'].forEach((v) {
        matches?.add(Trip.fromJson(v));
      });
    }
  }

  Login? login;
  Trip? trip;
  List<Trip>? roomies;
  List<Trip>? matches;

  Result copyWith({
    Login? login,
    Trip? trip,
    List<Trip>? roomies,
    List<Trip>? matches,
  }) =>
      Result(
          login: login ?? this.login,
          trip: trip ?? this.trip,
          roomies: roomies ?? this.roomies,
          matches: matches ?? this.matches);

  Map<String, dynamic> toJson() => {
        'login': login,
        'trip': trip?.toJson(),
        'roomies': roomies?.map((e) => e.toJson()).toList(),
        'matches': matches?.map((e) => e.toJson()).toList()
      };
}
