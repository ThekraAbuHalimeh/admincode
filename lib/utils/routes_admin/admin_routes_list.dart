
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../admin_view/admin_add_dosy_screen.dart';
import '../../admin_view/admin_home_screen.dart';
import '../../admin_view/admin_setting_screen.dart';
import '../../admin_view/admin_talabat_screen.dart';
import '../../admin_view/create_user.dart';
import '../../binding/admin_controller_binding.dart';

import 'admin_routes_string.dart';


final List<GetPage<dynamic>> getPages = [

  GetPage(name: AdminRoutesString.firstPage, page: () => AdminAddDosyScreen(),binding: AdminControllerBinding()),
  GetPage(name: AdminRoutesString.secondPage, page: () => AdminHomeScreen(),binding: AdminControllerBinding()),
  GetPage(name: AdminRoutesString.thirdPage, page: () => AdminSettingScreen(),binding: AdminControllerBinding()),
  GetPage(name: AdminRoutesString.fourthPage, page: () => AdminTalabatScreen(),binding: AdminControllerBinding()),
  GetPage(name: AdminRoutesString.fifthPage, page: () => CreateUser(),binding: AdminControllerBinding()),
];