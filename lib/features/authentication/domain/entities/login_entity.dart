import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String accessToken;
  final String tokenType;

  LoginEntity({required this.accessToken, required this.tokenType});

  @override
  List<Object> get props => [accessToken, tokenType];

}