import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefrontend/features/home/home.main.dart';

Future<void> main() async {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeMain(),
  ));
}
