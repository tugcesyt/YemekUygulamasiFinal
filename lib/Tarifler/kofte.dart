import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menuanayemek.dart';

void main() => runApp(new flutter_app11());

class flutter_app11 extends StatelessWidget {
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
                    "Hasanpaşa Köftesi",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 4 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(
                    "500 gr kıyma, 3 dilim bayat ekmek içi, 1 soğan, 1 yumurta, 4 çorba kaşığı"
                        "domates suyu, 1 kahve fincanı su, tuz, karabiber, kimyon, 2 domates."),
                new Text(" "),
                new Text("Patates püresi için: "),
                new Text(
                    "2 patates, 10 gr tereyağı, 2 çorba kaşığı süt, tuz, 2 çorba kaşığı rendelenmiş kaşar peyniri"),
                new Text(" "),
                new Text("-Püre için patateslerin kabuklarını soyup yıkayın. "
                    "Dilimleyip tencereye alın. Üzerini kapatacak kadar su ilave edin. Haşlayıp süzün."),
                new Text(
                    "-Ezip tereyağı, süt, rendelenmiş kaşar peyniri ve tuz ilave ederek pürüzsüz "
                        "bir kıvam elde edinceye kadar karıştırın."),
                new Text(
                    "-Sıkma torbasına aktarıp köftelerin üzeri için bir kenarda bekletin."),
                new Text(
                    "-Köfte için, ekmek içlerini ıslatıp ufalayın. Soğanı soyup rendeleyin ve suyunu süzün."),
                new Text(
                    "-Derin bir kapta kıyma, rendelenip suyu sıkılmış soğan, 1 yumurta, "
                        "ufalanmış ekmek içleri, tuz ve baharatı karıştırarak yoğurun."),
                new Text(
                    "-Kıymadan küçük cevizden biraz daha büyük parçalar koparıp avucunuzun içinde yassı köfteler elde edin."),
                new Text(
                    "-Her köftenin içini patates püresi yerleşecek şekilde çukurlaştırın."),
                new Text(
                    "-Yağlanmış fırın tepsisine köfteleri yan yana dizin. 160 dereceye ayarlı fırında"
                        " kızarıncaya kadar yaklaşık yarım saat pişirin."),
                new Text(
                    "-Fırından alıp (fırını sıcak tutun) üzerlerine patates püresinden"
                        " sıkma torbası yardımıyla çukurların içini dolduracak şekilde sıkın."),
                new Text(
                    "-Köftelerin altına kalınca dilimlenmiş domatesler, üzerlerine de domates püresini gezdirerek dökün."
                        " Tekrar fırına verip 10 dakika daha pişirin."),
                new Text("-Fırından alıp sıcak servis yapın."),
                new Text(" "),
                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 68"),
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
            title: new Text("HASANPAŞA KÖFTESİ TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/kofte.jpeg", fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}
