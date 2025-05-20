import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/app_colors.dart';

class LibrariesScreen extends StatefulWidget {
  const LibrariesScreen({super.key});

  @override
  State<LibrariesScreen> createState() => _LibrariesScreenState();
}

final List<String> libraries = const [
  'مكتبة عبد الحميد شومان',
  'مكتبة الجامعة الأردنية',
  'مكتبة أمانة عمان',
];

class _LibrariesScreenState extends State<LibrariesScreen> {
  String? selectedLibrary;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(
          'المكتبات',
          style: TextStyle(
              color: AppColors.darblue2, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              width: width > 600 ? 550 : width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'اختر مكتبة',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darblue2,
                            ),
                          ),
                          const SizedBox(height: 15),
                          CustomDropdown.search(
                            hintText: 'اختر من القائمة',
                            items: libraries,
                            initialItem: selectedLibrary,
                            onChanged: (value) {
                              setState(() {
                                selectedLibrary = value;
                              });
                            },
                            decoration: CustomDropdownDecoration(
                              closedBorderRadius: BorderRadius.circular(15),
                              expandedBorderRadius: BorderRadius.circular(15),
                              closedFillColor: Colors.blue[50],
                              expandedFillColor: Colors.blue[100],
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              listItemStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          if (selectedLibrary != null) ...[
                            const SizedBox(height: 20),
                            Text(
                              'تم اختيار: $selectedLibrary',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ]
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
