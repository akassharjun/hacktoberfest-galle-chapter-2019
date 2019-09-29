import 'package:http/http.dart' as http;

abstract class Api {
  Future<http.Response> uploadImage(String imageBase64);
}

class NetworkService extends Api {
  @override
  Future<http.Response> uploadImage(String imageBase64) {
    try {
      return http.get('url');
    } catch (error) {
      throw NetworkException(error);
    }
  }
}

class NetworkException implements Exception {
  String cause;

  NetworkException(this.cause);
}
