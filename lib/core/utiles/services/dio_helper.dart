import 'package:dio/dio.dart';

class DioHelper {
  Dio dio = Dio();

  Future<Response> push(
      {required String url,
      required body,
      Map<String, dynamic>? headers}) async {
    var response =
        await dio.post(url, data: body, options: Options(headers: headers));
    return response;
  }
}
