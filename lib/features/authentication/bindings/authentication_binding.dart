import 'package:get/get.dart';
import 'package:netflix_proj/features/authentication/data/data_sources/authentication_remote_data.dart';
import 'package:netflix_proj/features/authentication/data/repositories/authentication_repository.dart';
import 'package:netflix_proj/features/authentication/domain/usecase/login_usecase.dart';
import 'package:netflix_proj/features/authentication/presentaion/controller/auth_controller.dart';

class AuthenticationBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => AuthenticationRemoteDataImpl());
  Get.lazyPut(() => AuthenticationRepositoryImpl(remoteData: Get.find<AuthenticationRemoteDataImpl>()));
  Get.lazyPut(() => LoginUseCase(repository: Get.find<AuthenticationRepositoryImpl>()));
  Get.lazyPut(() => AuthController(loginUseCase: Get.find<LoginUseCase>()));
  }

}