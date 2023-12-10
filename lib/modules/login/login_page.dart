import 'package:app_movie/components/assests.dart';
import 'package:app_movie/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(Assests.background),
              fit: BoxFit.cover,
            )),
          ),
          Container(color: Colors.black45),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assests.logo),
              const SizedBox(height: 50),
              SizedBox(
                width: Get.width * 0.9,
                child: SignInButton(
                  Buttons.Google,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () => controller.login(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
