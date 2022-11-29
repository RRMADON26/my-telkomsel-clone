import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:weather/app/routes/app_pages.dart';
import 'package:weather/app/styles/colors.dart';
import 'package:weather/app/styles/fonts.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.offAllNamed(Routes.LOGIN),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                "assets/logo/logo-otp.svg",
                fit: BoxFit.contain,
              ),
              width: 112,
              height: 112,
            ),
            SizedBox(
              height: 32,
            ),
            Text("Masukan kode unik yang kami kirim",
                style: FontsStyles.bold18.copyWith(color: ColorStyles.black)),
            SizedBox(
              height: 12,
            ),
            RichText(
              text: TextSpan(
                  text:
                      "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke ",
                  style:
                      FontsStyles.medium14.copyWith(color: ColorStyles.black),
                  children: [
                    TextSpan(
                      text: "081290112333",
                      style: FontsStyles.bold14.copyWith(
                        color: ColorStyles.black,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Kode Unik",
              style: FontsStyles.bold14,
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFCED6E0),
                  ),
                ),
                hintText: "Cth. q5TsgH***",
                hintStyle: (FontsStyles.medium18
                    .copyWith(color: ColorStyles.placeholder)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                text: "Tidak menerima SMS ? ",
                style: FontsStyles.medium14.copyWith(color: ColorStyles.black),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => {print("Kirim Ulang")},
                    text: "Kirim ulang",
                    style:
                        FontsStyles.medium14.copyWith(color: ColorStyles.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
