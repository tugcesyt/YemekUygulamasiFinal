import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menudiyet.dart';

void main() => runApp(new flutter_app15());

class flutter_app15 extends StatelessWidget {
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
                    "DİYET POĞAÇA",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 4-6 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(" "),
                new Text("2 yumurta, 3 yemek kaşığı yoğurt, 7-8 yemek kaşığı tam buğday unu,"
                    "2 yemek kaşığı su, 1 tatlı kaşığı sıvı yağ, 1 paket kabartma tozu, 2 yemek kaşığı lor peyniri, 5-6 dal maydanoz,"
                    "üzeri için çörek otu"),
                new Text(" "),
                new Text(
                    "-2 yumurta beyazı ve 1 sarısını çırpın (1 tane sarısı üzerine"),
                new Text(
                    "-Daha sonra yoğurdu, sıvı yağı, unu ve kabartma tozunu ekleyip "
                        "kek hamurundan daha koyu kıvamlı bir hamur elde edin."),
                new Text("-Lor peynir ve maydanozu ekleyin. Kaşığı su ile ıslatıp hamurdan"
                    " küçük parçalar alıp yağlı kağıt serilmiş tepsiye dizin."),
                new Text("-Hamuru en az 15 parçaya bölerseniz iyi olur."
                    " Sonra yumurta sarısını üzerine sürün ve biraz çörek otu serpin. ."),
                new Text(
                    "-180 derecelik fırında üzeri kızarana kadar pişirin."),

                new Text(" "),
                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 62"),
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
            title: new Text("DİYET POĞAÇASI TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/dytpogaca.jpeg", fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}