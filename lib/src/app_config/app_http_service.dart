import 'package:dio/dio.dart';
import 'package:shipping_address/src/app_config/app_urls.dart';

class AppHttpService {
  AppHttpService() {
    final option = BaseOptions(
      baseUrl: AppUrls.baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
    );
    _dio = Dio(option);
  }

  late Dio _dio;

  Dio get dio => _dio;
}
