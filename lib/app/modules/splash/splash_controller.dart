import 'package:delivery_app_ui/app/routes/welcome_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    time();
    super.onInit();
  }

  void time() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.toNamed(
        WelcomeRoutes.welcome,
      ),
    );
  }
}
