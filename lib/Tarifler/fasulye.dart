import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menuanayemek.dart';

void main() => runApp(new flutter_app12());

class flutter_app12 extends StatelessWidget {
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
                    "YEŞİL FASULYE",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 3-4 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(" "),
                new Text("Yarım kilo fasulye, 1 adet soğan, 2 adet domates, zeytinyağı, pul biber,"
                    "1,5 yemek kaşığı salça, karabiber, tuz "),
                new Text(" "),

                new Text("-Fasulyeleri bir kabın içine koyup güzelce yıkayın."),

                new Text("-Fasulyeleri ayıklayın. İsteyen kenarlardaki kılçıkları da çıkartabilir. Daha sonra doğrayalım."
                ),
                new Text("-Şimdi tencereyi ocağa koyun. İçine zeytinyağı dökün."
                ),
                new Text("-Kuru soğanı doğrayalım. Soğanları tencerenin içine koyup kavuralım."

                ),
                new Text("-Soğanlar kavrulunca salçayı döküp karıştıralım. Sonra domatesleri doğrayıp içine dökelim."),
                new Text("-Fasulyeleri de tencereye koyalım. Baharatları da üzerine döküp hafif karıştıralım."),

                new Text ("-3 Su bardağı su ilave ederek tencerenin kapağını kapatın."
                ),
                new Text("-30-45 dakika piştikten sonra yemeğimiz hazır."
                ),
                new Text(" "),
                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 28"),
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
            title: new Text("YEŞİL/TAZE FASULYE TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/fasulye.jpeg", fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}