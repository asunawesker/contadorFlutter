import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  TextStyle estiloTexto = new TextStyle(fontSize: 40, color: Colors.amber[800]);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _barraSuperior(),
        body: _textoCentro(),
        floatingActionButton: _crearBotones());
  }

  Widget _barraSuperior() {
    return AppBar(
        title: Center(
            child: Text('Aplicación contador',
                style: TextStyle(
                    color: Colors.red[300],
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 4,
                    fontSize: 25))),
        backgroundColor: Colors.deepOrange[200],
        centerTitle: true);
  }

  Widget _textoCentro() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks', style: estiloTexto),
          Text('$_contador',
              style: TextStyle(color: Colors.blueGrey[700], fontSize: 35))
        ],
      ),
    );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(
          child: Icon(Icons.exposure_neg_1), onPressed: _sustraer),
      SizedBox(width: 10.0),
      FloatingActionButton(
          child: Icon(Icons.exposure_plus_1), onPressed: _agregar)
    ]);
  }

  void _agregar() {
    setState(() => _contador++);
  }

  void _sustraer() {
    setState(() {
      _contador > 0 ? _contador-- : _contador = 0;
    });
  }

  void _reset() {
    setState(() => _contador = 0);
  }
}
