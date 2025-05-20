import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../../helper/app_colors.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int selectedIndex = 0;
  bool selected = false;

  final List<String> driver = ['ليث', 'احمد', 'محمد'];

  final List<Order> ordersData = [
    Order(name: 'دوسية1', teacher: 'محمد', price: 2, state: 'متوفر', semester: 'الأول', part: 'العلمي'),
    Order(name: 'دوسية2', teacher: 'محمد', price: 2, state: 'متوفر', semester: 'الثاني', part: 'الادبي'),
    Order(name: 'دوسية3', teacher: 'محمد', price: 2, state: 'متوفر', semester: 'الأول', part: 'العلمي'),
    Order(name: 'دوسية4', teacher: 'محمد', price: 2, state: 'متوفر', semester: 'الثاني', part: 'الادبي'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(
          'الطلبات الحالية',
          style: TextStyle(color: AppColors.darblue2, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.darblue2),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: ordersData.length,
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
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "تأكيد",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darblue2,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  selected = !selected;
                                });
                              },
                              child: Text(
                                "تفاصيل",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darblue2,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            IconButton(
                              splashColor: Colors.blue[100],
                              icon: const Icon(Icons.delete),
                              color: AppColors.darblue2,
                              onPressed: () {

                              },
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('اسم الدوسية: ${order.name}',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              Text('اسم المعلم: ${order.teacher}',
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('السعر: ${order.price}',
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('الفصل: ${order.semester}',
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('الفرع: ${order.part}',
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (selected)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomDropdown.search(
                  hintText: 'السائق',
                  items: driver,
                  onChanged: (value) {
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
