
import 'package:dartz/dartz.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';
import 'package:netflix_proj/features/authentication/domain/entities/login_entity.dart';
import 'package:netflix_proj/features/authentication/domain/entities/sing_up_entity.dart';

abstract class AuthenticationRepository{
  Future<Either<Failure, SingUpEntity>> singUp(Map data);
  Future<Either<Failure, LoginEntity>> login(Map data);

}