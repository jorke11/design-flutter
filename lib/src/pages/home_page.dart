import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estilotitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estilosubtitulo = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImage(),
            _crearTitulo(),
            _crearAcciones(),
            _crearText(),
            _crearText(),
            _crearText(),
            _crearText(),
            _crearText(),
            _crearText(),
            _crearText(),
          ],
        ),
      ),
    );
  }

  Widget _crearImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            "https://www.fundacionaquae.org/wp-content/uploads/2016/04/RioAmur.jpg"),
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Titulo 1",
                    style: estilotitulo,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text("Titulo 1 wd sad sadsad", style: estilosubtitulo),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        SizedBox(
          height: .5,
        ),
        Text(text, style: TextStyle(fontSize: 16, color: Colors.blue))
      ],
    );
  }

  Widget _crearText() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            "Excepteur non eu amet sunt incididunt veniam Lorem ut magna nisi et Lorem enim. Esse reprehenderit et veniam nulla dolore. Nisi nisi irure adipisicing incididunt fugiat sit anim ad. Minim fugiat esse excepteur laborum velit in minim reprehenderit laboris. Aliqua et minim quis laboris sint eiusmod dolor mollit tempor consequat duis veniam labore proident. Mollit aute ex adipisicing do incididunt aliqua deserunt duis quis commodo id.",
            textAlign: TextAlign.justify,
          )),
    );
  }
}
