import 'package:flutter/material.dart';
import 'package:mobile2023/components/form_input_component.dart';
import 'package:mobile2023/components/submit_btn.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _nomeProduto = TextEditingController();
  final _descricao = TextEditingController();
  final _modelo = TextEditingController();
  final _preco = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
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

            SizedBox(
              width: 128,
              height: 60,
            ),
            Input(
              labelText: '    Nome do Produto',
              keyboardType: TextInputType.name,
              controller: _nomeProduto,
            ),
            Input(
                labelText: '    Descrição',
                keyboardType: TextInputType.name,
                controller: _descricao),
            Input(
                labelText: '    Modelo',
                keyboardType: TextInputType.name,
                controller: _modelo),
            Input(
                labelText: '    Preço',
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                controller: _preco),
            SubmitBtn(
              btn_label: "Salvar",
              btn_color: Colors.blueAccent,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
