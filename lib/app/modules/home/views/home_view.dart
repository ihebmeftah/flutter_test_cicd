import 'package:flutter/material.dart';
import 'package:flutter_test_cicd/flavors.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(F.title)),
        body: Center(child: Text('Hello ${F.title}')));
  }
}
