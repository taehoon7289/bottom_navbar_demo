import 'package:bottom_navbar_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:bottom_navbar_demo/layout/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myBottomNavigationBarController =
        Get.put(MyBottomNavigationBarController());
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘의집 따라하기'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Obx(
              () => Text(
                  '현재 하단 네비게이션 인덱스 :: ${myBottomNavigationBarController.currentIndex.value}'),
            )),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          children: [
            Expanded(flex: 4, child: MyBottomNavigationBar()),
            Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    print('ElevatedButton onPress');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.lightBlueAccent,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.add, size: 30),
                ))
          ],
        ),
      ),
    );
  }
}
