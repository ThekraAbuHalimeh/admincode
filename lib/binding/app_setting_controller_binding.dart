import 'package:get/get.dart';

import '../controller/app_setting_controller.dart';



class AppSettingControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => SettingsController());

  }
}

