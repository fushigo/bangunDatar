import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  int c = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungLuas () {
    num hitung = (alas * tinggi / 2);
    color.value = Colors.red;
    hasil.value = "Hasil Perhitungan luas dari $alas x $tinggi / 2 = $hitung";
  }

  void hitungKeliling () {
    int hitung = alas + tinggi + c;
    color.value = Colors.yellow;
    hasil.value = "Hasil Perhitungan Keliling dari $alas + $tinggi + $c = $hitung";
  }
}