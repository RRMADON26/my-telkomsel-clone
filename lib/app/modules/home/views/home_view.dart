import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:weather/app/styles/colors.dart';
import 'package:weather/app/styles/fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0XFFEC2028),
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: "Hai, ",
            style: FontsStyles.medium20,
            children: [
              TextSpan(
                text: "Romadon",
                style: FontsStyles.bold20,
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => {print("QR")},
            child: Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(
                right: 20,
              ),
              child: SvgPicture.asset(
                "assets/icon/icon-qrcode.svg",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              width: Get.width,
              height: 185,
              color: ColorStyles.red,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black54,
                              blurRadius: 2.0,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 16.0, 20, 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "081290112333",
                                    style: FontsStyles.bold18.copyWith(
                                      color: ColorStyles.white,
                                    ),
                                  ),
                                  Image.asset("assets/logo/logo-simpati.png"),
                                ],
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sisa Pulsa Anda",
                                    style: FontsStyles.medium14.copyWith(
                                      color: ColorStyles.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp. 780.000",
                                    style: FontsStyles.bold24.copyWith(
                                      color: ColorStyles.white,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Isi Pulsa",
                                      style: FontsStyles.bold14.copyWith(
                                        color: ColorStyles.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: ColorStyles.yellow,
                                        fixedSize: Size(90, 34)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "Berlaku sampai",
                                      style: FontsStyles.medium14,
                                      children: [
                                        TextSpan(
                                          text: " 30 Desember 2022",
                                          style: FontsStyles.bold14,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Telkomsel POIN",
                                          style: FontsStyles.medium14.copyWith(
                                              color: ColorStyles.white)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: ColorStyles.yellow,
                                        ),
                                        child: Text(
                                          "2305",
                                          style: FontsStyles.bold14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardStatus(
                              title: "Internet", data: "52.10", unit: "GB"),
                          CardStatus(title: "Telepon", data: "20", unit: "Min"),
                          CardStatus(title: "SMS", data: "18", unit: "SMS"),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8,
                  color: Color(0XFFF1F2F6),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      //body
                      children: [
                        Expanded(
                          child: Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 20),
                            child: ListView(
                              children: [
                                Text(
                                  "Kategori Paket",
                                  style: FontsStyles.bold18,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    HomeCategories(
                                      icon: "internet",
                                      title: "Internet",
                                    ),
                                    HomeCategories(
                                      icon: "telephone",
                                      title: "Telephone",
                                    ),
                                    HomeCategories(
                                      icon: "sms",
                                      title: "SMS",
                                    ),
                                    HomeCategories(
                                      icon: "roaming",
                                      title: "Roaming",
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    HomeCategories(
                                      icon: "entertainment",
                                      title: "Hiburan",
                                    ),
                                    HomeCategories(
                                      icon: "superior",
                                      title: "Unggulan",
                                    ),
                                    HomeCategories(
                                      icon: "stored",
                                      title: "Tersimpan",
                                    ),
                                    HomeCategories(
                                      icon: "history",
                                      title: "Riwayat",
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  "Terbaru dari telkomsel",
                                  style: FontsStyles.bold18,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      NewsFromTelkomsel(
                                        image: "assets/image/news-1.png",
                                      ),
                                      NewsFromTelkomsel(
                                        image: "assets/image/news-2.png",
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Tanggap COVID-19",
                                  style: FontsStyles.bold18,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      CovidNews(
                                          image:
                                              "assets/image/covid-news-1.png",
                                          title:
                                              "Diskon Spesial 25% Untuk Pelanggan Baru"),
                                      CovidNews(
                                          image:
                                              "assets/image/covid-news-2.png",
                                          title:
                                              "Bebas Kuota Akses Layanan Kesehatan"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black12,
                                offset: const Offset(5.0, 5.0),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 60,
                                child: ItemNavigation(
                                    status: true,
                                    icon: "home",
                                    title: "Beranda"),
                              ),
                              Container(
                                height: 60,
                                child: ItemNavigation(
                                    status: false,
                                    icon: "history",
                                    title: "Riwayat"),
                              ),
                              Container(
                                height: 60,
                                child: ItemNavigation(
                                    status: false,
                                    icon: "help",
                                    title: "Bantuan"),
                              ),
                              Container(
                                height: 60,
                                child: ItemNavigation(
                                    status: false,
                                    icon: "account",
                                    title: "Akun Saya"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsFromTelkomsel extends StatelessWidget {
  const NewsFromTelkomsel({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.only(right: 15),
      width: Get.width * 0.6,
      height: 100,
    );
  }
}

class CovidNews extends StatelessWidget {
  const CovidNews({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 5,
      shadowColor: Colors.black12,
      child: Container(
        width: Get.width * 0.6,
        height: 172,
        child: Column(
          children: [
            Image.asset(image , fit: BoxFit.cover, height: 112,),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 ),
              child: Text(
                title,
                style: FontsStyles.bold14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key, required this.icon, required this.title})
      : super(key: key);

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icon/icon-$icon.svg",
            fit: BoxFit.contain,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: FontsStyles.medium14,
          )
        ],
      ),
    );
  }
}

class ItemNavigation extends StatelessWidget {
  const ItemNavigation(
      {Key? key, required this.status, required this.icon, required this.title})
      : super(key: key);

  final bool status;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          (status == true)
              ? "assets/icon/icon-$icon-filled.svg"
              : "assets/icon/icon-$icon-outline.svg",
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: FontsStyles.medium14.copyWith(
              color: (status == true) ? ColorStyles.red : ColorStyles.greyDark),
        ),
      ],
    );
  }
}

class CardStatus extends StatelessWidget {
  CardStatus({
    Key? key,
    required this.title,
    required this.data,
    required this.unit,
  }) : super(key: key);
  final String title;
  final String data;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      elevation: 5,
      shadowColor: Colors.black12,
      child: Container(
        width: 101,
        height: 68,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: FontsStyles.medium14.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  text: data,
                  style: FontsStyles.bold24.copyWith(color: ColorStyles.red),
                  children: [
                    TextSpan(
                        text: " $unit",
                        style: FontsStyles.medium14
                            .copyWith(color: ColorStyles.greyDark)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 60);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 70, size.height);
    path.lineTo(size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
