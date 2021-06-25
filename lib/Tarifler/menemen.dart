import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menukahvalti.dart';


void main() => runApp(new flutter_app9());

// ignore: camel_case_types
class flutter_app9 extends StatelessWidget {
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
                    "Menemen Tarifi",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 3 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler: "),
                new Text(
                    "4 adet sivri biber, 1 adet kapya biber, 4 adet domates, 1 dal taze soğan,"
                        " 1/2 adet soğan, 4 yemek kaşığı zeytin yağı, 4 adet yumurta, tuz ve karabiber"),
                new Text(
                    "-Zeytinyağını yapışmaz tabanlı, derince bir tavaya alın ve ince ince doğradığınız"
                        " kuru soğanı pembeleşene dek kavurun."),
                new Text(
                    "-Ardından sivri biberleri ve kapya biberleri ekleyin ve kavurma işlemini sürdürün."),
                new Text(
                    "-Biberler solmaya başlayınca doğradığınız domatesleri de ekleyin ve kapağını kapatıp, "
                        "domatesler iyice yumuşayana dek pişirin, yaklaşık 10 dakika yeterli olacaktır."),
                new Text(
                    "-Son olarak incecik doğradığınız taze soğanı da ekleyin ve soğanların rengi solunca yumurtaları kırıp karıştırın."),
                new Text(
                    "-Yumurtalar pişene dek karıştırın ve ardından altını kapatıp, sıcak sıcak servis edin. "),
                new Text(" "),
                new Text("Afiyet olsun!"),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 37"),
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
                      builder: (context) => flutter_app5()));},),
            title: new Text("MENEMEN TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/menemen.jpeg", fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}
