import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);


  void hitungLuas () {
    int hitung = sisi * sisi;
    color.value = Colors.red;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling () {
    int hitung = sisi * 4;
    color.value = Colors.yellow;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi x 4 = $hitung";
  }
}