import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/domain/repository/repository.dart';

import '../../data/endpoint/endpoint.dart';

class TripController implements TripRepository {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<BaseResponse> trip(int id) async {
    late final BaseResponse baseResponse;
    final response = await _apiClient.get(Uri.parse(Endpoint.trip));
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> trips() async {
    late final BaseResponse baseResponse;
    final response = await _apiClient.get(Uri.parse(Endpoint.trips));
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
