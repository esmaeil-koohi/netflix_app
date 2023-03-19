import 'package:dartz/dartz.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';

abstract class BaseUseCase<Type, Map> {
  Future<Either<Failure, Type>> call(Map params);

}