import 'package:bangun_datar_kelas_b/page/persegi.dart';
import 'package:bangun_datar_kelas_b/page/persegi_panjang.dart';
import 'package:bangun_datar_kelas_b/page/segitiga.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage", style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children:[
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Persegi()));
                            },
                            child: CustomMenu(imageAsset: "assets/persegi.png", title: "Persegi",)
                        )
                    ),
                    Expanded(child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjang()));
                      },
                      child: CustomMenu(
                        imageAsset: "assets/persegi_panjang.png", title: "Persegi Panjang",),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Segitiga()));
                      },
                      child: CustomMenu(
                        imageAsset: "assets/segitiga.png", title: "Segitiga",),
                    )),
                    Expanded(child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Segitiga()));
                      },
                      child: CustomMenu(
                        imageAsset: "assets/belah_ketupat.png", title: "Belah Ketupat",),
                    )),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      // width: MediaQuery.of(context).size.width,
      color: Colors.green,
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100,),
            Text(title, style: TextStyle(color: Colors.white),),
          ],
        )
    );
  }
}
