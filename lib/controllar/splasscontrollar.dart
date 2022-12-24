
import 'package:chetingapp/screen/auth/login_page.dart';
import 'package:get/get.dart';

class SplasControllar extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds:3),(){
      Get.offAll(LoginScreen());
    });
    super.onReady();
  }

}