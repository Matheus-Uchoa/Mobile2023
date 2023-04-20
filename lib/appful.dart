import 'package:flutter/material.dart';
import 'package:mobile2023/form.dart';
import 'package:mobile2023/imc.dart';
class Appful extends StatefulWidget {
  const Appful({Key? key}) : super(key: key);

  @override
  State<Appful> createState() => _AppfulState();
}

class _AppfulState extends State<Appful> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Imc(),
    );
  }
}


//stl => build() => widget
//stf => createState() => State => build() => widget