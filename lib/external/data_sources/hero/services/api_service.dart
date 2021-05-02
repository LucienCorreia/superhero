import 'package:dio/dio.dart';

import '../../../../core/consts/api_consts.dart';

class ApiService with DioMixin {
  ApiService() {
    _init();
  }

  void _init() {
    options.baseUrl = apiBaseUrl;
    options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
  }
}
