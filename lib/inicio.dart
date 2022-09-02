import 'package:flutter/material.dart';
import 'suma.dart';

// Se tiene un widget que no cambia durante la ejecucion
class inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  String titulo = 'suma de 2 numeros';
  return MaterialApp(
    title: titulo,
    home: Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: suma(),
    ),
  );
  }
}
