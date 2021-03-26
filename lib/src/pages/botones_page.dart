import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_titulos(), _botonesRedondeados()],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRedondeado(
              Colors.purpleAccent, Icons.directions_bus, 'Bus'),
        ]),TableRow(children: [
          _crearBotonRedondeado(Colors.pink, Icons.shop, 'Buy'),
          _crearBotonRedondeado(
              Colors.orange, Icons.insert_drive_file, 'File'),
        ]),TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRedondeado(
              Colors.purpleAccent, Icons.directions_bus, 'Bus'),
        ]),TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRedondeado(
              Colors.purpleAccent, Icons.directions_bus, 'Bus'),
        ]),
        
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 35,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text(text, style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30),
            title: Container()),
      ]),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ])),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ])),
        ));

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Classify Transaction",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Classify ithis transaccion into a particular category",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
