// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:weather/app/routes/app_pages.dart';
import 'package:weather/app/styles/colors.dart';
import 'package:weather/app/styles/fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                "assets/logo/logo-login.svg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Silahkan masuk dengan nomor",
              style: FontsStyles.bold18,
            ),
            Text(
              "telkomsel kamu",
              style: FontsStyles.bold18,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Nomor HP",
              style: FontsStyles.bold14,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cPhone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorStyles.borderTextInput,
                  ),
                ),
                hintText: "Cth. 08129011xxxx",
                hintStyle: (FontsStyles.medium18
                    .copyWith(color: ColorStyles.placeholder)),
              ),
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkBox.value,
                    onChanged: ((value) => controller.checkBox.toggle()),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui",
                      style: FontsStyles.medium14
                          .copyWith(color: ColorStyles.black),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Syarat"),
                                },
                          text: " syarat",
                          style: FontsStyles.bold14
                              .copyWith(color: ColorStyles.red),
                        ),
                        TextSpan(
                          text: ",",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Ketentuan"),
                                },
                          text: " ketentuan",
                          style: FontsStyles.bold14
                              .copyWith(color: ColorStyles.red),
                        ),
                        TextSpan(
                          text: " dan",
                          style: FontsStyles.medium14
                              .copyWith(color: ColorStyles.black),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Privasi"),
                                },
                          text: " privasi",
                          style: FontsStyles.bold14
                              .copyWith(color: ColorStyles.red),
                        ),
                        TextSpan(
                          text: " Telkomsel",
                          style: FontsStyles.medium14
                              .copyWith(color: ColorStyles.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(
                Routes.HOME,
              ),
              child: Text(
                "MASUK",
                style: FontsStyles.bold14.copyWith(
                  color: ColorStyles.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: ColorStyles.red,
                fixedSize: Size(335, 42),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "Atau masuk menggunakan",
                style: FontsStyles.medium14.copyWith(
                  color: ColorStyles.greyDark,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icon/icon-fb.svg"),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          color: Color(0xFF3B5998),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(157, 42),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icon/icon-twitter.svg",
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          color: Color(0xFF1DA1F2),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(157, 42),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
