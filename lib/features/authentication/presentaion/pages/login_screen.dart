import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:netflix_proj/features/authentication/presentaion/controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
   LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child:Obx(()=>  Center(
            child:  Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      initialValue: controller.email.value,
                      onChanged: (value) => controller.email.value = value,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      initialValue: controller.password.value,
                      onChanged: (value) => controller.password.value = value,
                    ),
                    const SizedBox(height: 30,),
                    controller.isLoading.isFalse ? const Center(child: CircularProgressIndicator(),) : ElevatedButton(onPressed: () {
                       controller.setLogin;
                    }, child: const Text('وارد شدن')),
                  ],)),
          ),)

        ),
      ),
    );
  }
}
