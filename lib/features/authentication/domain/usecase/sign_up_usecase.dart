
import 'package:dartz/dartz.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';
import 'package:netflix_proj/core/usecase/base_use_case.dart';
import 'package:netflix_proj/features/authentication/domain/entities/sing_up_entity.dart';
import 'package:netflix_proj/features/authentication/domain/repository/authentication_repository.dart';

class SignUpUseCase implements BaseUseCase<SingUpEntity, Map>{
AuthenticationRepository repository;

SignUpUseCase({required this.repository});

  @override
  Future<Either<Failure, SingUpEntity>> call(Map params) {
    return repository.singUp(params);
  }


}