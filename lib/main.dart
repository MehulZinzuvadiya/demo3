import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/cupertino_widget.dart';
import 'View/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(
        name: '/',
        page: () => Homescreen(),
      ),
      GetPage(
        name: '/second',
        page: () =>Isetting() ,
      ),
    ],
  ));
}
