
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yemekuygulamasi/secenekler.dart';

import 'menutatli.dart';
class flutter_app16 extends StatelessWidget {
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
                    "Farklı bir sorunuz varsa bizimle iletişime geçebilirsiniz. 📩 ",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),

                  ),
                ),

                new Text(""),
                new Text(
                  "En sağlıklı un hangisidir?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''-Tam buğday unu
    Lif ve fitosteroller bakımından zengin olan tam buğday unu, ekmek yapımında sık sık tercih edilir. Uzun süre tok hissetmenizi sağlayan bu un çeşidi, bağırsak sağlınızı korur ve bağışıklık sisteminizin güçlenmesine yardımcı olur.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(
                  "Bebeklere ilk yumurta ne zaman verilmeli?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''-Ek gıdaya geçişin ilk aylarında yaklaşık 6-8 ay civarında 1 tane haşlanmış yumurtanın sarısını, 8. aydan itibaren ise bir bütün yumurtayı bebeğinize yedirmeye başlayabilirsiniz.
    Tıpkı tavuk yumurtasında olduğu gibi bıldırcın yumurtasını da ek gıda dönemi tariflerine ekleyebilirsiniz.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(
                  "Sağlıklı yağlar nelerdir?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''-Zeytinyağı ve kanola yağı gibi bitkisel yağlar tekli doymamış yağ asitleri açısından zengindirler ve doymuş yağ asitlerine göre kan kolesterol düzeyini daha iyi düzenlerler. 
    Mısırözü yağı, ayçiçek yağı ve soya yağı çoklu doymamış yağ asitleri açısından zengindirler ve kalp sağlığınızı korumaya yardımcı olurlar.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),

              ],
            ),
          ),
        ],
      ),
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: new Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => digerleri()));
              },
            ),
            title: new Text("📝 SIKÇA SORULAN SORULAR 📝"),
            backgroundColor: Colors.brown[400],
          ),





          body:



          new ListView(
            children: <Widget>[
              new Image.asset("assets/images/soru.jpg", fit: BoxFit.cover),
              titleSection

            ]
          )),
    );
  }
}