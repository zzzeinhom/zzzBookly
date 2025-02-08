import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromResponse(int? statusCode, String? message) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: message ?? 'Bad Request');
    } else if (statusCode == 404) {
      return ServerFailure(message: message ?? 'Not Found');
    } else if (statusCode == 500) {
      return ServerFailure(message: message ?? 'Internal Server Error');
    } else {
      return ServerFailure(message: message ?? 'Opps There was an Error');
    }
  }

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection Timeout With API Server!');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Timeout With API Server!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Timeout With API Server!');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad Certificate With API Server!');
      case DioExceptionType.badResponse:
        return ServerFailure(message: 'Bad Response With API Server!');
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request Canceled With API Server!');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Connection Error With API Server!');
      case DioExceptionType.unknown:
        if (dioException.response != null) {
          return ServerFailure.fromResponse(dioException.response?.statusCode,
              dioException.response?.statusMessage);
        }
        return ServerFailure(message: 'Unknown Error With API Server!');
    }
  }
}
