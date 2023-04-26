import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_proj/core/routes/app_pages.dart';
import 'package:netflix_proj/core/routes/app_routes.dart';
import 'package:netflix_proj/features/authentication/presentaion/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.LOGIN,
    );
  }
}

