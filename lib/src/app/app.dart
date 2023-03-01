import 'package:app_biblioteca/src/app/app_binding.dart';
import 'package:app_biblioteca/src/ui/routes/route_names.dart';
import 'package:app_biblioteca/src/ui/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: const AppBinding(),
      initialRoute: RouteNames.splash,
      getPages: RoutePages.all,
    );
  }
}
