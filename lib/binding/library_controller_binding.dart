import 'package:get/get.dart';

import '../controller/library_controller.dart';

class LibraryControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => LibraryController());

  }
}