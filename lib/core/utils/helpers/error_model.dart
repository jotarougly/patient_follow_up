class ErrorModel {
  int? statusCode;
  String? error;
  String? message;

  ErrorModel(
      {required this.statusCode, required this.error, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        statusCode: json['statusCode'] as int?,
        error: json['error'] as String?,
        message: json['message'] as String?,
      );
}

// ignore: empty_constructor_bodies
class HttpErrorException implements Exception {
  final int statusCode;
  final String error;
  final String message;

  HttpErrorException(this.statusCode, this.error, this.message);

  // HttpErrorException( { required this.statusCode,required this.error,required this.message})
}
