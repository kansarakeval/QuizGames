import 'package:ansergame/util/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      routes: app_routes,
      debugShowCheckedModeBanner: false,
    )
  );
}