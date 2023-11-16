import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/belah_ketupat_controller.dart';
import '../controller/persegi_panjang.dart';

class BelahKetupat extends StatelessWidget {
  BelahKetupat({super.key});

  final BelahKetupatController _BelahKetupatController = Get.put(BelahKetupatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persegi Panjang"),
      ),
      body: ListView(
          children:[
            Container(
              child: Column(
                children: [
                  Image.asset("assets/persegi_panjang.png", width: 100, height: 100,),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue
                    ),
                    child: const Text("Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya", textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue.shade300
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (value) {
                              _BelahKetupatController.d1 = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Diagonal",
                                hintText: "Masukan Diagonal 1",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (value) {
                              _BelahKetupatController.d2 = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Diagonal",
                                hintText: "Masukan Diagonal 2",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                )
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: () {
                                _BelahKetupatController.hitungLuas();
                              }, child: Text("Hitung Luas")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: () {
                                _BelahKetupatController.hitungKeliling();
                              }, child: Text("Hitung Keliling")),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade200
                    ),
                    child: Column(
                      children: [
                        Text("Hasil: "),
                        Obx(() => Text(_BelahKetupatController.hasil.value)),
                        Text("Udah gt aja Makasih"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
      ),
    );
  }
}
