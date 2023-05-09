import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'screens/home/view/home_screen.dart';
import 'screens/home/view/second page.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: 'Home',
          routes: {
            '/': (context) => HomePage(),
            'home': (context) => Second(),
          },
        );
      },
    ),
  );
}
