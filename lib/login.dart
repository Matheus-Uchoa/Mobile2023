import 'package:flutter/material.dart';
import 'package:mobile2023/appget.dart';
import 'package:mobile2023/components/form_input_component.dart';
import 'package:mobile2023/components/submit_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  "Log-in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Faça login no sistema",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: 128,
              height: 128,
            ),
            Input(
                labelText: '  Email',
                keyboardType: TextInputType.emailAddress,
                controller: _emailController),
            SizedBox(
              height: 10,
            ),
            Input(
                labelText: ' Senha',
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController),
            SizedBox(height: 20,),
            SubmitBtn(
                btn_label: 'ENTRAR',
                btn_color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AppGet()));
                }),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Esqueceu sua senha?",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
