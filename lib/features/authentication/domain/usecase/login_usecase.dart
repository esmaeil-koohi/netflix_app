import 'package:dartz/dartz.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';
import 'package:netflix_proj/core/usecase/base_use_case.dart';
import 'package:netflix_proj/features/authentication/domain/entities/login_entity.dart';
import 'package:netflix_proj/features/authentication/domain/repository/authentication_repository.dart';

class LoginUseCase implements BaseUseCase<LoginEntity, Map>{
  AuthenticationRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, LoginEntity>> call(Map params) {
   return repository.login(params);
  }


}