import 'package:flutter/material.dart';
import 'package:mobile2023/appget.dart';

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
                  "Log in",
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
                  "Entre com o seu E-mail e senha",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: 128,
              height: 128,
            ),

            // Text('Login', style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "    E-mail",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "    Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ENTRAR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AppGet()));
                    },
                  ),
                )),
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