import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:netflix_proj/core/data/catch/cache_provider.dart';
import 'package:netflix_proj/core/exceptions/failure_exception.dart';
import 'package:netflix_proj/features/authentication/domain/entities/login_entity.dart';
import 'package:netflix_proj/features/authentication/domain/usecase/login_usecase.dart';

class AuthController extends GetxController {
  final LoginUseCase loginUseCase;

  AuthController({required this.loginUseCase});

  RxString email = ''.obs;
  RxString password = ''.obs;
  RxBool isLoading = true.obs;
  RxBool isPasswordShow = true.obs;
  GlobalKey<FormState> formKey = GlobalKey();

  void setLogin() async {
    isLoading.value = false;
    Either<Failure, LoginEntity> response =
        await loginUseCase({"email": email.value, "password": password.value});
    response.fold((error) {
      isLoading.value = true;
      print(error.response);
    }, (data) {
      isLoading.value = true;
      print(data.accessToken);
      CatchProvider().setUserToken(data.accessToken);
    });
  }

  bool changePasswordIcon() {
    return isPasswordShow.value = !isPasswordShow.value;
  }

  String? validateEmailField(final String value) {
    if (value.trim().isEmpty) {
      return 'The Email field cannot be empty';
    }
    return null;
  }

  String? validatePasswordField(final String value) {
    if (value.trim().isEmpty) {
      return 'The password field cannot be empty';
    } else if (value.trim().length < 3) {
      return 'The length of the password must be at least 4 characters';
    }
    return null;
  }
}
