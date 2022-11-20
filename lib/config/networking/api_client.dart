import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    Logger.root.info(
        'method: ${request.method} \n url: ${request.url}\n headers: ${request.headers}');
    return request.send().then(
      (value) {
        return value;
      },
    ).catchError((error) async {
      Logger.root.info(error);
      return http.StreamedResponse(
          Stream.fromIterable([error.toString().codeUnits]), 500);
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then(
      (value) {
        Logger.root.info(value.body);
        return value;
      },
    ).catchError((error) {
      Logger.root.info(error);
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      Logger.root.info(value.body);
      return value;
    }).catchError((error) {
      Logger.root.info(error);
    });
  }
}
