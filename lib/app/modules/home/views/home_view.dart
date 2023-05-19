import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Spacer(),
        Expanded(
            flex: 8,
            child: Form(
              key: controller.key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.formController,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.contains(RegExp(r'[+]')) == false ||
                          value.isEmpty) {
                        return "this not a math operation";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  GetBuilder<HomeController>(
                    builder: (controller) =>
                        Text("Result = ${controller.result ?? "no"}  "),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (controller.key.currentState!.validate()) {
                          controller.doOperation();
                        } else {}
                      },
                      child: const Text("Do operation"))
                ],
              ),
            )),
        const Spacer(),
      ],
    ));
  }
}
