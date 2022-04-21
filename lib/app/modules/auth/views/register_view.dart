import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/copyright.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_textfield.dart';
import '../../../common/richtext_button.dart';
import '../../../common/welcome_text.dart';
import '../controllers/auth_controller.dart';

class RegisterView extends GetView<AuthController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                const WelcomeText(text: 'register'),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/auth.png', height: 30.h),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomTextField(
                        label: 'Nama Depan',
                        value: 'John',
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        label: 'Nama Belakang',
                        value: 'Doe',
                      ),
                    ),
                  ],
                ),
                const CustomTextField(
                  label: 'Nomor KTP',
                  hint: 'Masukkan nomor KTP anda',
                ),
                const CustomTextField(
                  label: 'Email',
                  hint: 'Masukkan email anda',
                ),
                const CustomTextField(
                  label: 'Nomor Telepon',
                  hint: 'Masukkan nomor telepon anda',
                ),
                const CustomTextField(
                  isPassword: true,
                  label: 'Password',
                  hint: 'Masukkan password anda',
                ),
                const CustomTextField(
                  isPassword: true,
                  label: 'Konfirmasi Password',
                  hint: 'Konfirmasi password anda',
                ),
                CustomButton(
                  text: 'Register',
                  onPressed: () => Get.offNamedUntil('home', (route) => false),
                ),
                RichTextButton(
                  text1: 'Sudah punya akun?   ',
                  text2: 'Login sekarang',
                  onTap: () => Get.offAndToNamed('login'),
                ),
                const Copyright(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
