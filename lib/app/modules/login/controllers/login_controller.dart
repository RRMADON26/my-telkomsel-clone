import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkBox = false.obs;
  TextEditingController cPhone = TextEditingController();

  @override
  void onClose() {
    cPhone.dispose();
    super.onClose();
  }
}
