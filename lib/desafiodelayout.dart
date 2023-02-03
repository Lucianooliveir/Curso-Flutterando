import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFFE6C6E),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/images/logopage.png")),
                  Text(
                    "Location Changer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "Plugin app for tinder",
                    style: TextStyle(fontSize: 13),
                  ),
                  Container(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          backgroundColor: Color(0xFFFFFFFF)),
                      onPressed: () {
                        print("Apertado");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Login with Facebook",
                          style: TextStyle(
                              color: Color(0xFFFE6C6E),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
