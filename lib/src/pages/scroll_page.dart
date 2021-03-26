import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[_pagina1(), _pagina2()],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imageFondo(), _textos()],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage("assets/original.png"),
          fit: BoxFit.cover,
        ));
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "11º",
            style: estiloTexto,
          ),
          Text("Miercoles", style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text(
                "Bienvenido",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () {}),
      ),
    );
  }
}
