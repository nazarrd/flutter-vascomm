import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/copyright.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_textfield.dart';
import '../../../common/richtext_button.dart';
import '../../../common/welcome_text.dart';
import '../controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              const WelcomeText(text: 'login'),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/images/auth.png', height: 30.h),
              ),
              const CustomTextField(
                label: 'Email',
                hint: 'Masukkan email anda',
              ),
              const CustomTextField(
                isPassword: true,
                label: 'Password',
                subLabel: 'Lupa Password anda ?',
                hint: 'Masukkan password anda',
              ),
              CustomButton(
                text: 'Login',
                onPressed: () => Get.offNamedUntil('home', (route) => false),
              ),
              RichTextButton(
                text1: 'Belum punya akun?   ',
                text2: 'Daftar sekarang',
                onTap: () => Get.toNamed('register'),
              ),
              const Copyright(),
            ],
          ),
        ),
      ),
    );
  }
}
