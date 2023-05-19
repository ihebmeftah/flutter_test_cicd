import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> key = GlobalKey();
  final TextEditingController formController = TextEditingController();
  num? result;
  void doOperation() {
    if (formController.text.contains('+')) {
      List op = formController.text.split("+");
      result = num.parse(op.first) + num.parse(op.first);
    }

    update();
  }
}
