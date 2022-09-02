// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class numuno extends StatefulWidget {
  //const numuno({super.key});
  TextEditingController n1c = new TextEditingController();
  numuno(this.n1c, {super.key});

  @override
  State<numuno> createState() => _numunoState(this.n1c);
}

class _numunoState extends State<numuno> {
  TextEditingController n1c = new TextEditingController();
  int s = 0;
  _numunoState(this.n1c);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text("Num 1"),
        new Flexible(
          child: new TextField(
            keyboardType: TextInputType.number,
            controller: n1c,
          ),
        )
      ],
    );
  }
}