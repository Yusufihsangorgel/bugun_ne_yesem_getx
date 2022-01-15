import 'dart:math';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 1.obs;

  @override
  void onInit() {
    final box = GetStorage();
    var tmp = box.read("counter");
    if (tmp == null) {
      gidaNo();
      print("İf counter = " + counter.value.toString());
    } else {
      counter.value = tmp;
      print("Else counter = " + counter.value.toString());
    }
    print("HomeController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("HomeController onClose");
    super.onClose();
  }

  @override
  void gidaNo() {
    int yemekNo = Random().nextInt(4);
    while (yemekNo == counter.value) {
      yemekNo = Random().nextInt(4);
      print("***********************");
    }
    counter.value = yemekNo;
    print("GidaNo counter = " + counter.value.toString());
    final box = GetStorage();
    box.write("counter", yemekNo);
    /*counter.value = counter.value + 1;
    if (counter.value == 6) {
      counter.value = 1;
    }*/
  }
}

List<String> corbaAdlari = [
  "Mercimek",
  "Tarhana",
  "Tavuk Suyu",
  "Düğün Çorbasi",
  "Yoğurtlu Çorba"
];
List<String> yemekAdlari = [
  "Patlıcan Musakka",
  "Mantı",
  "Kuru Fasulye",
  "İçli Köfte",
  "Alabalık"
];
List<String> tatliAdlari = [
  "Special Kadayıf",
  "Baklava",
  "Fırın Sütlaç",
  "Tarçınlı Muhallebi",
  "Maraş Dondurma"
];
