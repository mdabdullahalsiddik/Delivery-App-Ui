
import 'package:delivery_app_ui/app/modules/home/home_page.dart';
import 'package:delivery_app_ui/app/modules/parcel/parcel_page.dart';
import 'package:delivery_app_ui/app/modules/payment/payment_page.dart';
import 'package:delivery_app_ui/app/modules/profile/profile_page.dart';
import 'package:get/get.dart';

class NavigatorController extends GetxController {
  int selectIndex = 0;

  List pages = [
    const HomePage(),
    const PaymentPage(),
    const ParcelPage(),
    const ProfilePage(),
  ];
  setSelectIndex(index) {
    selectIndex = index;
    update();
  }
}
