import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          'assets/images/login_image.png',
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login'))
            ],
          ),
        ),
      ],
    ));
  }
}
