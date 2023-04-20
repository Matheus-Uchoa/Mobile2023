import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile2023/components/form_input_component.dart';
import 'package:mobile2023/components/submit_btn.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();

  var imc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Calculadora IMC",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                SizedBox(
                  height: 50,
                ),
                Input(
                  labelText: "  Peso",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: _pesoController,
                ),
                Input(
                  labelText: "  Altura",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: _alturaController,
                ),
                SubmitBtn(
                    btn_label: "Calcular",
                    btn_color: Colors.blue,
                    onPressed: () {
                      var altura = 0.0;
                      altura = double.tryParse(_alturaController.text)!;
                      var peso = 0.0;
                      peso = double.tryParse(_pesoController.text)!;
                      setState(() {
                        imc = peso / pow(altura, 2);
                      });
                    }),
                SizedBox(height: 30,),
                Text("Seu IMC é: " + imc.toStringAsFixed(2), style: TextStyle(fontSize: 25, color: Colors.blue) ,textAlign: TextAlign.left,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
