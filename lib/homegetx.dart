import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homecontroller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "BUGÜN NE YESEM",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Obx(() => FlatButton(
                    color: Colors
                        .orange[400], // butonun normal pozisyondaki arka planı
                    highlightColor:
                        Colors.blue, // butonun tıklanır haldeykenki arka planı
                    splashColor:
                        Colors.black, // iki eylem arasındaki arka plan rengi
                    onPressed: homeController.gidaNo,
                    child: Image.asset(
                        "images/corba_${homeController.counter.value + 1}.jpg"))),
              ),
            ),
            Obx(() => Text(
                  corbaAdlari[homeController.counter.value],
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20),
                )),
            Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Obx(() => FlatButton(
                    color: Colors.green[500],
                    highlightColor: Colors.blue,
                    splashColor: Colors.black,
                    onPressed: homeController.gidaNo,
                    child: Image.asset(
                        "images/tatli_${homeController.counter.value + 1}.jpg"))),
              ),
            ),
            Obx(() => Text(
                  tatliAdlari[homeController.counter.value],
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20),
                )),
            Container(
              width: 200,
              child: Divider(
                height: 4.7,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Obx(() => FlatButton(
                    color: Colors.brown[800],
                    highlightColor: Colors.blue,
                    splashColor: Colors.black,
                    onPressed: homeController.gidaNo,
                    child: Image.asset(
                        "images/yemek_${homeController.counter.value + 1}.jpg"))),
              ),
            ),
            Obx(() => Text(
                  yemekAdlari[homeController.counter.value],
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20),
                )),
            Container(
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
