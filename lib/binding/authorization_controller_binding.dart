import 'package:get/get.dart';

import '../controller/authorization_controller.dart';



class AuthorizationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AuthorizationController());

  }
}