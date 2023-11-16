import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungLuas () {
    int hitung = panjang * lebar;
    color.value = Colors.red;
    hasil.value = "Hasil Perhitungan luas dari $panjang x $lebar = $hitung";
  }

  void hitungKeliling () {
    int hitung = (panjang + lebar) * 2;
    color.value = Colors.yellow;
    hasil.value = "Hasil Perhitungan Keliling dari ($panjang + $lebar) x 2 = $hitung";
  }
}