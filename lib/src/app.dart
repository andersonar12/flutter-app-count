import 'package:flutter/material.dart';
import 'package:flutter_application_test/src/pages/contador_page.dart';
/* import 'package:flutter_application_test/src/pages/home_page.dart'; */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* Para quitar etiqueta de Debug en la esquina */
      home: Center(
        /* child: HomePage(), */
        child: ContadorPage(),
      ),
    );
  }
}
