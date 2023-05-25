import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Container(
        child: const Text("Login"),
      ),
    );
  }
}
