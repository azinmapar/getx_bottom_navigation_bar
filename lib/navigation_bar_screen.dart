import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation_bar/controllers/navigation_bar_controller.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        elevation: 0.0,
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        // * Bottom Navigation Bar
        return AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.search,
            Icons.favorite,
            Icons.account_circle_rounded,
          ],
          activeIndex: Get.find<NavigationBarController>().index.value,
          activeColor: Colors.red,
          inactiveColor: Colors.white,
          backgroundColor: Colors.grey[800],
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            Get.find<NavigationBarController>().index.value = index;
          },
          //other params
        );
      }),
    );
  }
}
