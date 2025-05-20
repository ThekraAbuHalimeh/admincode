
import 'package:flutter/material.dart';

import '../../helper/app_colors.dart';
import 'admin_add_dosy_screen.dart';
import 'admin_home_screen.dart';
import 'admin_setting_screen.dart';
import 'admin_talabat_screen.dart';


class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  int selected = 0;

  final List<Widget> screens = const [
    AdminHomeScreen(),
    AdminTalabatScreen(),
    AdminAddDosyScreen(),
    AdminSettingScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        selectedItemColor: AppColors.darblue2,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'الطلبات'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'اضافة دوسيات'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الإعدادات'),
        ],
      ),
    );
  }
}
