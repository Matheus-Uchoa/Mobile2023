import 'package:flutter/material.dart';
import 'package:mobile2023/appget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Produtos"),),

      body:Column(children: <Widget>[AppGet()]),
    );
  }
}
