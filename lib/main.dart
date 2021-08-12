import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/views/authentication/login.dart';
import 'package:couries_one/views/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: AppColors.PrimaryColor));
  runApp(
    GetMaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    )
  );
}