import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 26);
  int _cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Número de clicks', style: _estiloTexto),
              Text('$_cont',style:_estiloTexto) /* $cont el dolar para interpolacion de strings */
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(width: 30.0),
      FloatingActionButton(
          onPressed: () => _resetear(),
          tooltip: 'Reset Counter',
          child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox()),
      FloatingActionButton(
          onPressed: () => _sustraer(),
          tooltip: 'Decrement Counter',
          child: Icon(Icons.remove)),
      SizedBox(width: 5.0),
      FloatingActionButton(
          onPressed: () => _agregar(),
          tooltip: 'Increment Counter',
          child: Icon(Icons.add))
    ]);
  }

   _agregar() => setState(() {
        _cont++;
      });

   _sustraer() => setState(() {
         (_cont == 0) ? _cont = 0 : _cont--;
      });

   _resetear() => setState(() {
        _cont = 0;
      });
}
