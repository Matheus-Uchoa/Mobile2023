import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobile2023/form.dart';

class AppGet extends StatefulWidget {
  const AppGet({Key? key}) : super(key: key);

  @override
  State<AppGet> createState() => _AppGetState();
}

class _AppGetState extends State<AppGet> {
  final _url = 'http://192.168.100.98:8080/api/products';
  List<dynamic> _products = []; // lista de produtos como estado do widget

  @override
  void initState() {
    super.initState();
    _fetchProducts(); // busca produtos da API ao iniciar o widget
  }

  Future<void> _fetchProducts() async {
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      setState(() {
        _products = json.decode(response
            .body); // atualiza estado do widget com a lista de produtos da API
      });
    } else {
      print('Erro ao buscar produtos: ${response.statusCode}');
    }
  }

  Future<void> _deleteProduct(int id) async {
    final response = await http.delete(Uri.parse('$_url/$id'));
    if (response.statusCode == 200) {
      setState(() {
        _products.removeWhere((product) =>
            product['id'] ==
            id); // remove produto da lista atualizando o estado do widget
      });
      print('Produto deletado com sucesso');
    } else {
      print('Erro ao deletar produto: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Formulario()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: _products.isNotEmpty
              ? Container(
                  height: MediaQuery.of(context).size.height * .9,
                  child: ListView.builder(
                    itemCount: _products.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(_products[index]['name']),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  'Categoria: ' + _products[index]['category']),
                              Text('Descrição: ' +
                                  _products[index]['description']),
                              Text('Modelo: ' + _products[index]['model']),
                              Text('Preço: ' +
                                  _products[index]['price'].toString()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            title: Text('Deletar Produto'),
                                            content: Text(
                                                'Deseja mesmo deletar este produto?'),
                                            actions: [
                                              TextButton(
                                                child: Text('Cancelar'),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              TextButton(
                                                child: Text('Deletar',
                                                    style: TextStyle(
                                                        color: Colors.red)),
                                                onPressed: () async {
                                                  await _deleteProduct(
                                                      _products[index]['id']);
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
