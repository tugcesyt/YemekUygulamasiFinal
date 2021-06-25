import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menukahvalti.dart';

void main() => runApp(new flutter_app10());

class flutter_app10 extends StatelessWidget {
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
                    "3 2 1 Poğaça",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 25 adet içindir."),
                new Text(" "),
                new Text("Hamuru için:"),
                new Text(" "),
                new Text("2 su bardağı yoğurt, 1 su bardağı sıvı yağ, 1 tatlı kaşığı tuz, 3 paket kabartma tozu, 4,5 su bardağı un."),
                new Text(" "),
                new Text("İçi için:"),
                new Text(" "),
                new Text("1 kase dilediğiniz bir peynir çeşidi, 1/2 demet maydanoz."),
                new Text(" "),
                new Text("Üzeri için:"),
                new Text(" "),
                new Text("1 çay bardağı galeta unu"),
                new Text(" "),
                new Text("Ununu fazla kaçırmayın, hepsini birden boca etmeyin, kıvamına göre dikkatlice "
                    "ekleyin. Yuvarlarken tezgahı veya elinizi de unlayacağınız için onu da hesaba katarak un koyun."     ),

                new Text("-Fırınınızı 180 derecede ısıtın. Yoğurt, sıvı yağı, tuz ve kabartma tozunu karıştırın."
                ),
                new Text("-Unun önce 4 bardak kadarını eleyin ve yavaş yavaş ekleyerek karıştırın."
                    " Ele yapışmayan bir hamur elde edene kadar yoğurun."
                ),
                new Text("-Eğer hala kıvama gelmediyse geriye kalan 1 bardağı da eleyerek yavaş yavaş ekleyin."

                ),
                new Text("-Hamurun üzerini kapatarak 30 dakika kadar dinlendirin"),
                new Text("-Hamurdan, mandalina büyüklüğünde toplar koparıp avcunuzun içinde yassılaştırın"
                    " ve ortasına çok hafifçe bastırarak açın. "),
                new Text ("-İçine peynir ve maydanoz ile hazırladığınız içten 1-2 yemek kaşığı kadar ekleyin"
                ),
                new Text("-Sağından solundan toparlayarak kapatın ve yuvarlama başlayın."
                ),
                new Text("-Poğaçaların her birini galeta ununa bulayın. Fırın kağıdı serili tepsiye aralıklı olarak dizin."
                ),
                new Text("-Önceden ısıtılmış 180 derecelik fırında 20-25 dakika kadar pişirin."
                ),
                new Text("-Üzeri güzelce kızardıktan sonra fırından alabilirsiniz."
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
          new Text(" 95"),
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
          title: new Text("3 2 1 POĞAÇA TARİFİ"),
          backgroundColor: Colors.brown[400],
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset("assets/images/pogaca.jpeg", fit: BoxFit.cover),
            titleSection
          ],
        ),
      ),
    );
  }
}