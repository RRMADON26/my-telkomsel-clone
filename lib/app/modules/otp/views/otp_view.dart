import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weather/app/routes/app_pages.dart';

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
              child: Image.asset(
                "assets/logo/logo-otp.png",
                fit: BoxFit.contain,
              ),
              width: 112,
              height: 112,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Masukan kode unik yang kami kirim",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081290112333",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Kode Unik",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                  hintText: "Cth. q5TsgH***"),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                  text: "Tidak menerima SMS ? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {print("Kirim Ulang")},
                      text: "Kirim ulang",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
