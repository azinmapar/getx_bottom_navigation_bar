import 'package:get/get.dart';
import 'package:getx_bottom_navigation_bar/controllers/navigation_bar_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationBarController());
  }
}
