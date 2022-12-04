import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/domain/repository/repository.dart';
import 'package:logging/logging.dart';

import '../../data/endpoint/endpoint.dart';

class TripController implements TripRepository {
  final ApiClient _apiClient = ApiClient();
  final HttpState httpState;

  TripController(this.httpState);

  @override
  Future<BaseResponse> trip(int id) async {
    String url = '${Endpoint.trip}/$id';
    String method = 'GET';
    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _apiClient.get(Uri.parse(url));
    httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> trips() async {
    String url = Endpoint.trips;
    String method = 'GET';
    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _apiClient.get(Uri.parse(url));
    httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
      httpState.onErrorRequest(url, method);
    }
    return baseResponse;
  }
}
