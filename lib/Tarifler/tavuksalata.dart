import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menudiyet.dart';

void main() => runApp(new flutter_app14());

class flutter_app14 extends StatelessWidget {
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
                    "TAVUKLU SALATA",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 1 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(" "),
                new Text("2 avuç marul, 1 adet maskolin yeşilliği, 1 avuç kırmızı lahana, 1 adet tavuk göğsü,"
                    "1 adet ceviz, 3 adet yeşil zeytin, 3 demet nane, 1 fincan limon suyu, 1 çorba kaşığı zeytinyağı."),
                new Text(" "),
                new Text(
                    "-Tavukları bir geceden önce marine ederseniz yumuşacık olur."),
                new Text(
                    "-Önceden ısıtılmış 190 dereceye ayarladığımız fırınımıza marine ettiğimiz tavuk göğsümüzü koyalım"),
                new Text("-30 dakika boyunca pişirelim"),
                new Text(
                    "-Güzelce yıkadığımız yeşilliklerimizi kurutup üstüne pişirdiğimiz tavuk göğüslerimizi dilimleyip üstüne koyalım."),

                new Text(
                    "-Zeytinyağı, ceviz ve limonu da ilave ederek servis edelim."),
                new Text(" "),

                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 50"),
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
                      builder: (context) => flutter_app7()));},),
            title: new Text("TAVUKLU SALATA TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/tavuklusalata.jpeg",
                  fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}