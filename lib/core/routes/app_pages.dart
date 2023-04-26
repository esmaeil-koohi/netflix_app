import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:netflix_proj/core/routes/app_routes.dart';
import 'package:netflix_proj/features/authentication/routs/authenticaton_route.dart';

class AppPages {

  static String get initialRoute{
    return AppRoutes.LOGIN;
  }

  static List<GetPage> get pages => [...authenticationRoutes];


}