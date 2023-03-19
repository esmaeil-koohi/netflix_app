
import 'package:dio/dio.dart';

const baseUrl = 'http//:127.0.0.1:8000/api/v1/get-movies';

abstract class ApiProviderInterface{
  Future<Response> get(path);
  Future<Response> post(path, {Map? data});

}

class ApiProvider implements ApiProviderInterface{
  ApiProvider ._internal();

  static ApiProvider _singletoon = ApiProvider._internal();

  factory ApiProvider (){
    return _singletoon;
  }

  static BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: 20000),
    headers: {
      "Content-Type" : "application/json",
      "Accept" : "application/json",
    }
  );

  Dio _dio = Dio(options);

  @override
  Future<Response> get(path) async => await _dio.get(path);

  @override
  Future<Response> post(path, {Map? data}) async => _dio.post(path, data: data);

}