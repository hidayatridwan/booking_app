import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/repository.dart';

class AuthController implements AuthRepository {
  AuthController(this._httpState);

  final ApiClient _apiClient = ApiClient();
  final HttpState _httpState;

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    const String url = Endpoint.forgotPassword;
    const String method = 'POST';
    _httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;

    final response =
        await _apiClient.post(Uri.parse(url), body: {'email': email});
    _httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    const String url = Endpoint.login;
    const String method = 'POST';
    _httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _apiClient
        .post(Uri.parse(url), body: {'email': email, 'password': password});
    _httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    const String url = Endpoint.logout;
    const String method = 'POST';
    _httpState.onStartRequest(url, method);

    await _apiClient.post(Uri.parse(url)).then((value) {
      _httpState.onSuccessRequest(url, method);
    }).catchError((onError) {
      _httpState.onErrorRequest(url, method);
    });

    _httpState.onEndRequest(url, method);
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String fullName) async {
    const String url = Endpoint.register;
    const String method = 'POST';
    _httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _apiClient.post(Uri.parse(url),
        body: {'email': email, 'password': password, 'full_name': fullName});
    _httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
