import 'package:dio/dio.dart';

import '../end_points.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
        }
      ),
    );
  }

  static Future<Response?> post({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
    String lang='en',

  }) async {
    dio!.options.headers={
      'lang':lang,
      'Authorization':token,
      'Content-Type':'application/json',
    };
    return await dio?.post(url, data: data,queryParameters: query);
  }


}
