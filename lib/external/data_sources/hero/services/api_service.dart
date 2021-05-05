import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

import '../../../../core/consts/api_consts.dart';

class ApiService extends DioForNative {
  ApiService() {
    _init();
  }

  void _init() {
    options.baseUrl = apiBaseUrl;
    options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
  }
}
