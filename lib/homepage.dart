import 'package:flutter/material.dart';
import 'package:olamundo/app_controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("teste"),
              accountEmail: Text("teste@a.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("Tela de inicio"),
              onTap: () => print("clicou"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              subtitle: Text("Finalizar sessão"),
              onTap: () => Navigator.of(context).pushReplacementNamed("/"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: const [CustomSwitch()],
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomSwitch(),
                Container(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      )
                    ]),
                Container(
                  height: 50,
                ),
                Text("$counter"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/desafio");
                    },
                    child: Text("Pagina do desafio de layout"))
              ])),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppControler.instance.isDarkTheme,
      onChanged: (v) {
        AppControler.instance.changeTema();
      },
    );
  }
}
