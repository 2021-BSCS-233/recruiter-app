import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/colors/theme_data.dart';
import 'package:recruiter/core/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Job Seeker",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.login,
    ),
  );
}