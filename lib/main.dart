import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/modules/auth/bindings/auth_binding.dart';
import 'app/modules/auth/views/login_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
  runApp(
    GetMaterialApp(
      title: 'Vascomm - Skill Test',
      theme: ThemeData(),
      getPages: AppPages.routes,
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      home: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return const LoginView();
        },
      ),
    ),
  );
}
