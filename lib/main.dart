import 'package:bilgi_testi/test_veri.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();
  int dogrular = 0;

  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
                title: new Text("Bravo Testi Bitirdiniz"),
                content: new Text("Doğru Sayınız : $dogrular"),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Testi Bitir'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        test_1.testiSifirla();
                        secimler = [];
                        dogrular = 0;
                      });
                    },
                  )
                ],
              ));
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenButon
            ? secimler.add(kDogruIconu)
            : secimler.add(kYanlisIconu);

        test_1.getSoruYaniti() == secilenButon ? dogrular++ : dogrular;
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
