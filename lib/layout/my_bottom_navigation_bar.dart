import 'package:bottom_navbar_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myBottomNavigationBarController =
        Get.put(MyBottomNavigationBarController());
    return Obx(() => BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            myBottomNavigationBarController.updateCurrentIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: myBottomNavigationBarController.currentIndex.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_convenience_store_rounded),
                label: '스토어'),
            BottomNavigationBarItem(
                icon: Icon(Icons.man_sharp), label: '인테리어시공'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: '마이페이지'),
          ],
        ));
  }
}
