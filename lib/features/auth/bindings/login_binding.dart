import 'package:get/get.dart';
import 'package:recruiter/features/auth/controller/auth_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(()=>AuthController());
  }
}