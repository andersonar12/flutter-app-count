import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 26);
  final cont = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks', style: estiloTexto),
            Text('$cont',
                style:
                    estiloTexto) /* $cont el dolar para interpolacion de strings */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          /* cont = cont */
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
