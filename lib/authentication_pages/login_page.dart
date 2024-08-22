import 'package:flutter/material.dart';
import 'package:traitz_commerce/widgets/widgets1.dart';
import 'package:traitz_commerce/widgets/widgets2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: TextStyle(
                fontSize: 30,
                color: Colors.greenAccent,
                
              )),
              loginField("Email"),
              box(),
              loginField("Password"),
              box(),
              box(),
              inputButton("Login")
            ],
          ),
        ),
      ),
    );
  }
}