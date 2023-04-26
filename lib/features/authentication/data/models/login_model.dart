import 'dart:convert';

import 'package:netflix_proj/features/authentication/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity{
  final String accessToken;
  final String tokenType;
  
  LoginModel({required this.accessToken, required this.tokenType}) :super(accessToken: accessToken, tokenType:  tokenType);
  
  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(accessToken : json['access_token'], tokenType: json['token_type']);
  
  
  
}