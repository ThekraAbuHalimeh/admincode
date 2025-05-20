import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/app_colors.dart';

class AdminTalabatScreen extends StatefulWidget {
  const AdminTalabatScreen({super.key});

  @override
  State<AdminTalabatScreen> createState() => _AdminTalabatScreenState();
}

class _AdminTalabatScreenState extends State<AdminTalabatScreen> {
  int selectedIndex = 0;

  final List<Order> ordersData = [
    Order(name: 'دوسية1', teacher: 'محمد', price: 2, state: 'قيد التحضير',semester: 'الأول',part:'العلمي'),
    Order(name: 'دوسية2', teacher: 'احمد', price: 3, state: 'قيد التحضير',semester: 'الأول',part:'العلمي'),
    Order(name: 'دوسية3', teacher: 'محمد', price: 2, state: 'قيد التحضير',semester: 'الأول',part:'العلمي'),
    Order(name: 'دوسية4', teacher: 'احمد', price: 3, state: 'قيد التحضير',semester: 'الأول',part:'العلمي'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(
          'الطلبات السابقة',
          style: TextStyle(color: AppColors.darblue2, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.darblue2),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [

            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                border: Border.all(color: AppColors.darblue2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                itemCount: ordersData.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final order = ordersData[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.darblue2, width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.library_books,
                            color: AppColors.darblue2, size: 28),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('اسم الدوسية: ${order.name}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text('اسم المعلم: ${order.teacher}',
                                  style: const TextStyle(fontSize: 15)),
                              Text('السعر: ${order.price}',
                                  style: const TextStyle(fontSize: 15)),
                              Text('الفصل: ${order.semester}',
                                  style: const TextStyle(fontSize: 15)),
                              Text('الفرع: ${order.part}',
                                  style: const TextStyle(fontSize: 15)),
                              Text('حالة الطلب: ${order.state}',
                                  style: const TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}

class Order {
  final String name;
  final String teacher;
  final int price;
  final String state;
  final String semester;
  final String part;

  Order({
    required this.name,
    required this.teacher,
    required this.price,
    required this.state,
    required this.semester,
    required this.part,
  });
}
