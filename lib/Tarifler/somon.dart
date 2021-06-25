import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menuanayemek.dart';

void main() => runApp(new flutter_app13());

class flutter_app13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: new Text(
                    "FIRINDA SOMON",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 2 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(" "),
                new Text(
                    "2 adet fileto somon, 1/2 çay bardağı zeytinyağı, 1 diş sarımsak (dövülmüş),"
                        "3-4 dal taze kekik, 1 adet limon suyu"),
                new Text(" "),
                new Text(
                    "-Fırında pişen somon için tek önemli nokta balığın sulu kalmasıdır. O sebeple çok uzun süre pişirmemeye "
                        "dikkat edin. Fansız programda pişirmek, balığın sulu kalmasına yardımcı olacaktır."),
                new Text(
                    "-Sarımsakları dövün. Zeytinyağı, limon ve sarımsakları karıştırıp, somonların üzerine sürün."),
                new Text("-Balıkları buzdolabında 1-1,5 saat dinlendirin."),
                new Text("-Fırını 180 dereceye ayarlayın."),
                new Text(
                    "-Fırın tepsisine yağlı kağıt serin. Somonları yağlı kağıdın üzerine yerleştirin."),
                new Text("-Fırında kontrollü olarak 15-18 dakika pişirin."),
                new Text("-Dereotlarını ince ince kıyın."),
                new Text(
                    "-Fırından çıkan somonları taze kekik ve dereotuyla süsleyin."),
                new Text(" "),
                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 73"),
        ],
      ),
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: new Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: new AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => flutter_app6()));},),
            title: new Text("FIRINDA SOMON TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/SOMON.jpeg", fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}
