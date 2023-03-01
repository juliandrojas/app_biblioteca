import 'package:app_biblioteca/src/data/firebase/auth_firebase.dart';
import 'package:app_biblioteca/src/ui/routes/route_names.dart';
import 'package:app_biblioteca/src/ui/widgets/snackbar/error_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() {
    Get.showOverlay(
      asyncFunction: () async {
        try {
          await const AuthFirebase().signInWithEmail(
            emailController.text.trim(),
            passwordController.text,
          );
          print(emailController.text);
          Get.offNamed(RouteNames.home);
        } on FirebaseAuthException catch (e) {
          Get.showSnackbar(ErrorSnackbar(e.message ?? e.code));
        }
      },
    );
  }
}
