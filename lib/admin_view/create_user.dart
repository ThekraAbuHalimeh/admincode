import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),

        ),
        actionsIconTheme: IconThemeData(
            size: 30.0,
            color: Colors.black,
            opacity: 10.0
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: 550.0,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 300.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create New Admin User Account!",
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'الإسم الأول',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'الإسم الأخير',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'رقم الهاتف',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 30),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(vertical: 14),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign in",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.black54,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
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
