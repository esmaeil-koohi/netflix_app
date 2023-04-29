import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:netflix_proj/features/authentication/presentaion/controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
    const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                   image: DecorationImage(
                     image: ExactAssetImage('assets/login2.png'),
                     fit: BoxFit.fill
                   )
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 30,
                      sigmaY: 30,
                    ),
                    child: Container(
                      color: Colors.black12,
                    ),
                  ),
                )
            ),
            Positioned(
             left: 40,
             right: 40,
             top: height * 0.15,
              child:Container(
              width: width * 0.6,
              height: height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Obx(() => Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: controller.email.value,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) => controller.validateEmailField(value!),
                          onChanged: (value) => controller.email.value = value,
                          decoration: const InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder()
                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          maxLength: 10,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) => controller.validatePasswordField(value!),
                          initialValue: controller.password.value,
                          onChanged: (value) => controller.password.value = value,
                          decoration:  InputDecoration(
                              suffixIcon: GestureDetector(
                                child: controller.isPasswordShow.value ?
                                const Icon(Icons.visibility) :
                                const Icon(Icons.visibility_off),
                                onTap: ()=> controller.changePasswordIcon(),
                              ),
                              hintText: 'Password',
                              border: const OutlineInputBorder()
                          ),
                          obscureText: controller.isPasswordShow.value,
                        ),
                        controller.isLoading.isFalse ? const Center(child: CircularProgressIndicator(),) :
                        ElevatedButton(onPressed: () {

                        }, child: const Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),),
                )
            ),)
          ],
        )
      ),
    );
  }
}

