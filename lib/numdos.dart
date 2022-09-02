// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class numdos extends StatefulWidget {
  //const numuno({super.key});
  TextEditingController n2c = new TextEditingController();
  numdos(this.n2c, {super.key});

  @override
  State<numdos> createState() => _numdosState(this.n2c);
}

class _numdosState extends State<numdos> {
  TextEditingController n2c = new TextEditingController();
  int s = 0;
  _numdosState(this.n2c);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text("Num 2"),
        new Flexible(
          child: new TextField(
            keyboardType: TextInputType.number,
            controller: n2c,
          ),
        )
      ],
    );
  }
}