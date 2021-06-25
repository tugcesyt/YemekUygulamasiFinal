import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'digerleri.dart';
import 'package:yemekuygulamasi/digerleri.dart';
import 'anamenu.dart';

void main() {
  runApp(animasyon());
}

class animasyon extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => digerleri2()));},),
        title: Text("Uygulamamızı beğendiniz mi?"),
      ),
      body: Center(
        child: SizedBox
          (
          width: 250,

        child :DefaultTextStyle(
          style: const TextStyle(color: Colors.brown,
            fontSize: 25.0
          ),


        child: AnimatedTextKit(
          pause: Duration(milliseconds: 2500),

          totalRepeatCount: 5,
          animatedTexts: [
            TyperAnimatedText("Zevk ve neşe içinde yenen şeyler en kolay hazmolunurlar. -Montaigne        "
                "                                       " "Uygulamamızı beğendiyseniz oy kullanmayı unutmayın ⭐️⭐️⭐️⭐️⭐️" ),
          ],
        ),
      ),
    ),),);
  }
}
