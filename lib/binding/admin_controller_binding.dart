

import 'package:get/get.dart';

import '../controller/admin_controller.dart';

class AdminControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AdminController());

  }
}