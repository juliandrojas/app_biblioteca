import 'package:app_biblioteca/src/app/controllers/auth_controller.dart';
import 'package:app_biblioteca/src/ui/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  const SplashBinding();

  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(authController: Get.find<AuthController>()),
    );
  }
}