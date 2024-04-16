import 'package:delivery_app_ui/app/routes/sing_in_routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void next() {
    Get.toNamed(SingInRoutes.singIn);
  }
}
