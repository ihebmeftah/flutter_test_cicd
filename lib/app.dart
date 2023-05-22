import 'package:flutter/material.dart';
import 'package:flutter_test_cicd/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
