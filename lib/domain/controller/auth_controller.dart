import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    late final BaseResponse baseResponse;
    final response = await _apiClient
        .post(Uri.parse(Endpoint.forgotPassword), body: {'email': email});
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    late final BaseResponse baseResponse;
    final response = await _apiClient.post(Uri.parse(Endpoint.login),
        body: {'email': email, 'password': password});
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _apiClient.post(Uri.parse(Endpoint.logout));
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String fullName) async {
    late final BaseResponse baseResponse;
    final response = await _apiClient.post(Uri.parse(Endpoint.register),
        body: {'email': email, 'password': password, 'full_name': fullName});
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
