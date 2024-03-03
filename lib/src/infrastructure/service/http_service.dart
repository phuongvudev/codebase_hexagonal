import 'package:codebase_hexagonal/src/infrastructure/service/service_base.dart';
import 'package:dio/dio.dart';

abstract base class HttpService extends ServiceBase {
  late final Dio _dio;

  HttpService() {
    initialize();
    addInterceptors();
  }

  void addInterceptors() {}
}
