import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupatController extends GetxController{
  int d1 = 0;
  int d2 = 0;
  int sisi = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungLuas () {
    num hitung = d1 * d2 / 2;
    color.value = Colors.red;
    hasil.value = "Hasil Perhitungan luas dari $d1 x $d2 / 2 = $hitung";
  }

  void hitungKeliling () {
    int hitung = sisi * 4;
    color.value = Colors.yellow;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi x 2 = $hitung";
  }
}