// import 'dart:ffi';

import 'package:get/get.dart';

class CategoryController extends GetxController {
  var catergoryIndex = 0.obs;

  List<String> categoryList = [
  
    "Burger",
    "Deserts",
    "Maxcican",
    "suchi"

  ];

  void changeIndex(int index) {
    catergoryIndex.value = index;
  }
}
