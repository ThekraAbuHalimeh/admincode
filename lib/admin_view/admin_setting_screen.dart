
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../helper/app_colors.dart';
import 'admin_home_screen.dart';
import 'create_user.dart';
import 'libraries_screen.dart';


class AdminSettingScreen extends StatefulWidget {
  const AdminSettingScreen({super.key});

  @override
  State<AdminSettingScreen> createState() => _AdminSettingScreenState();
}

class _AdminSettingScreenState extends State<AdminSettingScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(
          'الإعدادات',
          style: TextStyle(color: AppColors.darblue2, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.darblue2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Settings Options
              GestureDetector(
                onTap: () {
                  Get.to(CreateUser());
                },
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.account_circle, color: AppColors.darblue2),
                    title: const Text('انشاء مستخدم جديد',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  Get.to(AdminHomeScreen());
                },
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.library_add_check, color: AppColors.darblue2),
                    title: const Text('الطلبات',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  Get.to(LibrariesScreen());
                },
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.library_books, color: AppColors.darblue2),
                    title: const Text('المكتبات',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                  ),
                ),
              ),

              const SizedBox(height: 370.0),
              SizedBox(
                width: 200.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.darblue2,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text(
                    "تسجيل الخروج",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
