import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class AppHttpService {
  AppHttpService() {
    final option = BaseOptions(
      baseUrl: AppUrls.baseUrl,
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
    );
    _dio = Dio(option);
  }

  late Dio _dio;

  Dio get dio => _dio;
}
