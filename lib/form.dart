import 'package:flutter/material.dart';
import 'package:mobile2023/components/form_input_component.dart';
import 'package:mobile2023/components/submit_btn.dart';

/*class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Cadastro de Produtos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              width: 128,
              height: 90,
            ),
            Input(
              labelText: '    Nome do Produto',
              keyboardType: TextInputType.name,
            ),
            Input(labelText: '    Categoria', keyboardType: TextInputType.name),
            Input(labelText: '    Marca', keyboardType: TextInputType.name),
            Input(
                labelText: '    Preço',
                keyboardType: TextInputType.numberWithOptions(decimal: true)),
            Input(
                labelText: '    Código do Produto',
                keyboardType: TextInputType.number),
            SubmitBtn(
              btn_label: "Salvar",
              btn_color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
*/