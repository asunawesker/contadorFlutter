import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto =
      new TextStyle(fontSize: 40, color: Colors.tealAccent[600]);

  final int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text('Título',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 4,
                      fontSize: 25))),
          backgroundColor: Colors.deepOrange[200],
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: estiloTexto),
            Text('$conteo',
                style: TextStyle(color: Colors.blueGrey[700], fontSize: 35))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cancel, color: Colors.lightBlue[300]),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
