import 'package:dartz/dartz.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';
import 'package:netflix_proj/core/exceptions/server_exception.dart';
import 'package:netflix_proj/features/authentication/data/data_sources/authentication_remote_data.dart';
import 'package:netflix_proj/features/authentication/domain/entities/login_entity.dart';
import 'package:netflix_proj/features/authentication/domain/entities/sing_up_entity.dart';
import 'package:netflix_proj/features/authentication/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRemoteData remoteData;

  AuthenticationRepositoryImpl({required this.remoteData});

  @override
  Future<Either<Failure, LoginEntity>> login(Map data) async {
    try {
      return Right(await remoteData.login(data));
    } on ServerException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, SingUpEntity>> singUp(Map data) async {
   try{
     return Right(await remoteData.singUp(data));
   }on ServerException catch (error){
     return Left(ServerFailure(error: error));
   }
  }


}
