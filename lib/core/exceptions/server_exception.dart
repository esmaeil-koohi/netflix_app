import 'package:netflix_proj/core/exceptions/failure_exception.dart';

class ServerException implements Exception{
  String? message;
  int? statusCode;

  ServerException({required this.message, required this.statusCode});
}