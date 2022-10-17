import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNumero = TextEditingController();
  TextEditingController sNumero = TextEditingController();
  TextEditingController tNumero = TextEditingController();
  String ordenacao = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.add_box, color: const Color(0xFFe12c2c), size: 48.0),
            new Text(
              "Primeiro Número:",
              style: new TextStyle(
                  fontSize: 24.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather"),
            ),
            new TextField(
              controller: pNumero,
              style: new TextStyle(
                  fontSize: 22.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segundo Número:",
              style: new TextStyle(
                  fontSize: 24.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather"),
            ),
            new TextField(
              controller: sNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Terceiro Número:",
              style: new TextStyle(
                  fontSize: 24.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather"),
            ),
            new TextField(
              controller: tNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Ordenação:",
                    style: new TextStyle(
                        fontSize: 23.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Merriweather"),
                  ),
                  new Text(
                    ordenacao,
                    style: new TextStyle(
                        fontSize: 23.0,
                        color: const Color(0xFFff0000),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Merriweather"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Ordenar",
                        style: new TextStyle(
                            fontSize: 23.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Merriweather"),
                      )),
                  new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Ordenar",
                        style: new TextStyle(
                            fontSize: 23.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Merriweather"),
                      )),
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Limpar",
                        style: new TextStyle(
                            fontSize: 23.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Merriweather"),
                      ))
                ])
          ]),
    );
  }

  void ordenar() {
    int pN, sN, tN;
    pN = int.parse(pNumero.text);
    sN = int.parse(sNumero.text);
    tN = int.parse(tNumero.text);
    setState(() {
      if ((pN > sN) && (pN > tN)) {
        if (sN > tN) {
          ordenacao = pN.toString() + "," + sN.toString() + "," + tN.toString();
        } else {
          ordenacao = pN.toString() + "," + tN.toString() + "," + sN.toString();
        }
      } else if ((sN > pN) && (sN > tN)) {
        if (pN > tN) {
          ordenacao = sN.toString() + "," + pN.toString() + "," + tN.toString();
        } else {
          ordenacao = sN.toString() + "," + tN.toString() + "," + pN.toString();
        }
      } else if ((tN > pN) && (tN > sN)) {
        if (pN > sN) {
          ordenacao = tN.toString() + "," + pN.toString() + "," + sN.toString();
        } else {
          ordenacao = tN.toString() + "," + sN.toString() + "," + pN.toString();
        }
      }
    });
  }
}
