import 'package:flutter/material.dart';

void main() => runApp(HesapMakinesi());

class HesapMakinesi extends StatelessWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Scaffold(
        backgroundColor: Colors.yellow[300],
        body: SafeArea(
          child: SayiSayfasi(),
        ),
      ),
    );
  }
}

class SayiSayfasi extends StatefulWidget {
  const SayiSayfasi({Key? key}) : super(key: key);

  @override
  State<SayiSayfasi> createState() => _SayiSayfasiState();
}

class _SayiSayfasiState extends State<SayiSayfasi> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  int? sonuc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("1. sayıyı girin"),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: t1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text("2. sayıyı girin"),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: t2,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("SONUÇ"),
                ),
                if (sonuc == null) ...[
                  Text(" "),
                ] else ...[
                  Text("$sonuc")
                ]
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sonuc = int.parse(t1.text) + int.parse(t2.text);
                    });
                  },
                  child: Text("+"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sonuc = int.parse(t1.text) - int.parse(t2.text);
                    });
                  },
                  child: Text("-"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sonuc = int.parse(t1.text) * int.parse(t2.text);
                    });
                  },
                  child: Text("*"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num sayi1 = int.parse(t1.text);
                      num sayi2 = int.parse(t2.text);
                      sonuc = sayi1 ~/ sayi2;
                    });
                  },
                  child: Text("/"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
