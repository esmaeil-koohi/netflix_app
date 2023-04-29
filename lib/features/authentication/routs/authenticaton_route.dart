import 'package:get/get.dart';
import 'package:netflix_proj/core/routes/app_routes.dart';
import 'package:netflix_proj/features/authentication/bindings/authentication_binding.dart';
import 'package:netflix_proj/features/authentication/presentaion/pages/login_screen.dart';

List<GetPage> authenticationRoutes = [
  GetPage(name: AppRoutes.LOGIN, page: () => const LoginScreen(), binding: AuthenticationBinding()),
  // GetPage(name: AppRoutes.SIGNUP, page: () => ,),
];