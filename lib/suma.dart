import 'package:flutter/material.dart';
import 'numuno.dart';
import 'numdos.dart';

// Stateful widget es aquel que cambia durante runtime

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  // Extraer cajas de texto
  TextEditingController num1c = new TextEditingController();
  TextEditingController num2c = new TextEditingController();
  String resultado = "0";

  void calculaSuma() {
    setState(() {
      int sum = int.parse(num1c.text) + int.parse(num2c.text);
      resultado = sum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          numuno(num1c),
          numdos(num2c),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () => calculaSuma(), child: Text("Suma"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Resultado: ",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                resultado,
                style: const TextStyle(fontSize: 30),
              )
            ],
          )
        ]
      ),
    );
  }
}