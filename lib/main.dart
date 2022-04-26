import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bottom_navbar_demo/page/my_home.dart';

void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '하단 네비게이션 바 만들꺼얌(feat:GetX)',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primaryColor: Colors.red),
      home: MyHome(),
    );
  }
}