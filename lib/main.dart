import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliq_pay/constants/app_strings.dart';
import 'package:sliq_pay/screens/referral_landing/referral_landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home: const ReferralLanding(),
    );
  }
}