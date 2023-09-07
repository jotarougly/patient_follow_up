/*import 'package:dio/dio.dart';

import '../../config/api/api_endpoints.dart';

final dio = Dio(BaseOptions(
  baseUrl: ApiEndpoint.baseUrl,
));

class DioHelper {
  Future<T> get<T>({required String path}) async {
    try {
      final response = await dio.get<T>(path);
      if (response.data != null) {
        return response.data!;
      }
      throw "Une erreur s'est produite"; // to customize
    } on DioError catch (e) {
      // TODO
      return handleErrors(e);
    }
  }

// exemple login
  ///
  /// √final body = FormData.fromMap({
//   'email': 'dio',
//   'password': '',
// });
  Future<T?> post<T>({required String path, required FormData body}) async {
    try {
      final response = await dio.post<T>(path, data: body);

      return response.data;
    } on DioError catch (e) {
      return handleErrors(e);
    }
  }

  dynamic handleErrors(DioError e) {}
}*/
