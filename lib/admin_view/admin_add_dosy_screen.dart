import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

import '../../helper/app_colors.dart';


class AdminAddDosyScreen extends StatefulWidget {
  const AdminAddDosyScreen({super.key});

  @override
  State<AdminAddDosyScreen> createState() => _AdminAddDosyScreenState();
}

class _AdminAddDosyScreenState extends State<AdminAddDosyScreen> {
  final List<String> semester = ['الفصل الأول', 'الفصل الثاني'];
  final List<String> teacher = ['احمد', 'محمد'];
  final List<String> grade = ['الأول', 'الثاني'];
  final List<String> subject = ['عربي', 'رياضيات'];
  final List<String> topic = ['درس2', 'درس1'];
  final List<String> course = ['كورس2', 'كورس1'];
  final List<String> part = ['الوحدة2', 'الوحدة1'];
  bool showDropdown = false;
  bool show = false;
  int selectedIndex = 0;

  final List<Order> ordersData = [
    Order(name: 'دوسية1', teacher: 'محمد', price: 2, state: 'متوفر',semester: 'الأول',part: 'الثانية'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: 550.0,
              child: Column(
                children: [
                  SizedBox(
                    height: 110,
                    width: 300.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 50,right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                               "اضافة دوسيات",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.darblue2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'المعلم',
                                  items: teacher,
                                  onChanged: (value) {},
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'الصف',
                                  items: grade,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'المادة',
                                  items: subject,
                                  onChanged: (value) {},
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'الفصل',
                                  items: semester,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'الفرع',
                                  items: part,
                                  onChanged: (value) {},
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'الوحدة',
                                  items: topic,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropdown.search(
                                  hintText: 'اسم الدوسية',
                                  items: course,
                                  onChanged: (value) {},
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(height: 15.0),
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

                                      const SizedBox(width: 15),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text('اسم الدوسية: ${order.name}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                            Text('اسم المعلم: ${order.teacher}', style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                            Text('الفصل: ${order.semester}', style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                            Text('الوحدة: ${order.part}', style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                            Text('السعر: ${order.price}', style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),

                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Image.asset('assets/elearning-banner-online-education-home-260nw-1711791130.webp'),
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
                  ),
                ],
              ),
            ),
          ),
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
