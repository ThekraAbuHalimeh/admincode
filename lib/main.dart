import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'admin_view/admin_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: AdminDashboardScreen(),
      // initialRoute: '/',
      // getPages: getPages,
    );
  }
}



