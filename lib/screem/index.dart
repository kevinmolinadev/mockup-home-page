import 'package:flutter/material.dart';

class Mockup extends StatelessWidget {
  const Mockup({super.key});
  @override
  Widget build(BuildContext context) {
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
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 255, 255)),
                shadowColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 255, 255)),
                overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 255, 255)),
                surfaceTintColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 255, 255)),
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
                        child: Image.asset('assets/banner.png',
                            fit: BoxFit.cover)),
                  )),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("OUTERWEAR",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
              ),
              
            ],
          ),
        ));
  }

  Card Item(){
    return Card(
      child: Text("HOOLA"),
    );
  }
}
