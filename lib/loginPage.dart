import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/Nike-Logo.png'),
              ),
              Container(
                height: 30,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12),
                  child: Column(children: [
                    TextField(
                      onChanged: (value) => email = value,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Email"),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (value) => senha = value,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password"),
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (email == "teste@a.com" && senha == "123") {
                          print("Login certo");
                          Navigator.of(context).pushReplacementNamed("/home");
                        } else {
                          print("Dados invalidos");
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            "Entrar",
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Text("Login: teste@a.com \n Senha: 123")
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.cover,
            )),
        Container(color: Colors.black.withOpacity(0.3)),
        _body()
      ],
    ));
  }
}
