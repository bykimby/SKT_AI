import 'package:get/get.dart' as getx;

class HttpResponse {
  bool success;
  int errorCode;
  String message;
  dynamic data;

  HttpResponse(
      {required this.success,
      required this.errorCode,
      required this.message,
      this.data});

  factory HttpResponse.fromJson(Map<String, dynamic> json) {
    return HttpResponse(
        success: json['success'],
        errorCode: json['errorCode'],
        message: json['message'],
        data: json['data'] ??= json['data']);
  }
}

abstract class HttpProvider {
  static HttpProvider get to => getx.Get.find();

  Future<HttpResponse> httpGet(String path,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? body});
  Future<HttpResponse> httpPost(
    String path,
    Map<String, dynamic> body,
  );
  Future<HttpResponse> httpDelete(String path,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? body});

  void setToken(String token);

  void setHeader(String key, String value);

  void removeHeader(String key);
}
