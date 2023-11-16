import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persegi extends StatelessWidget {
  Persegi({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Persegi"),),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),child: Image.asset("assets/persegi.png", height: 100,)),
            Padding(padding: EdgeInsets.all(20),child: Text("Persegi", style: TextStyle(color: Colors.white),)),
            Padding(padding: EdgeInsets.all(20), child: Text("Persegi adalah salah satu bangun datar yang memiiki 4 sisi dengan panjang yang sama")),
            Padding(padding: EdgeInsets.all(20), child: TextFormField(
              onChanged: (value){
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Sisi",
                hintText: "Masukan Sisi",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )
              ),
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: () {
                    _persegiController.hitungLuas();
                  }, child: Text("Hitung Luas")),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: () {
                    _persegiController.hitungKeliling();
                  }, child: Text("Hitung Keliling")),
                ),
              ],
            ),
            Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: _persegiController.color.value),)),
          ],
        ),
      ),
    );
  }
}
