import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mockup extends StatelessWidget {
  const Mockup({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> lista = [
      {
        "title": "Canguro de tela",
        "price": 40,
        "img":
            "https://invain.imgix.net/uploads/2019/02/canguro-carhatt-tendencia-naranja-persimmon.jpg?auto=format%2Ccompress&ixlib=php-3.3.0&w=500"
      },
      {
        "title": "Poleras",
        "price": 45,
        "img":
            "https://www.lineatex.com.bo/wp-content/uploads/2020/08/Polera-de-algodon-PO004-Lineatex.jpg"
      },
      {
        "title": "Tenis",
        "price": 45,
        "img":
            "https://intn24.lalr.co/old/su19_jd_theones_nikenews_aj1_low_gymred_rectangle_1600.jpg?w=480"
      },
      {
        "title": "Bolso",
        "price": 35,
        "img":
            "https://www.daviletto.es/15697-large_default/yanko-bolso-mujer-piel-coco-doble-asa-y-bandolera.jpg"
      }
    ];
    List<Widget> listWidget = lista.map((item) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: SizedBox(
                  width: 250,
                  height: 200,
                  child: Image.network(item["img"], fit: BoxFit.cover),
                )),
            Text(item["title"]),
            Text(item["price"].toString()),
          ],
        ),
      );
    }).toList();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 238, 238),
          title: const Align(
            alignment: Alignment.center,
            child: Text("FEARD OF GOOD",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32)),
          )),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const SearchBar(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 15)),
              leading: Icon(
                Icons.search,
                size: 30,
              ),
              hintText: "Ingrese el producto a buscar",
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
              shadowColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
              overlayColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
              surfaceTintColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                      width: double.infinity,
                      height: 380,
                      child:
                          Image.asset('assets/banner.png', fit: BoxFit.cover)),
                )),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("OUTERWEAR",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
            ),
            Carousel(listWidget),
          ],
        ),
      ),
    );
  }

  Widget Carousel(List<Widget> lista) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: CarouselSlider(
          items: lista,
          options: CarouselOptions(autoPlay: true),
    ));
  }
}
