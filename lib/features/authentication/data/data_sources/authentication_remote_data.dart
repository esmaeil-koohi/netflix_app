import 'package:dio/dio.dart';
import 'package:netflix_proj/core/data/network/api_provider.dart';
import 'package:netflix_proj/core/exceptions/server_exception.dart';
import 'package:netflix_proj/features/authentication/data/models/login_model.dart';
import 'package:netflix_proj/features/authentication/data/models/sing_up_model.dart';

abstract class AuthenticationRemoteData {
  Future<LoginModel> login(Map data);
  Future<SingUpModel> singUp(Map data);
}

class AuthenticationRemoteDataImpl implements AuthenticationRemoteData{
  @override
  Future<LoginModel> login(Map data) async {
   try{
    Response response = await ApiProvider().post("login", data: data);
    return LoginModel.fromJson(response.data);
   }on DioError catch(error){
   throw ServerException(message: error.response!.data, statusCode: error.response!.statusCode!);
    }
  }

  @override
  Future<SingUpModel> singUp(Map data) async {
   try{
     Response response = await ApiProvider().post("register", data: data);
     return SingUpModel.fromJson(response.data!);
   } on DioError catch(error){
     throw ServerException(message: error.response!.data, statusCode: error.response!.statusCode!);
   }
  }
  
}