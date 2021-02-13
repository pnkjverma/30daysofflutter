import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
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
            "Welcome! $name",
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
                  onChanged: (e) {
                    name = e;
                    setState(() {});
                  },
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
                InkWell(
                  onTap: () async {
                    setState(() {
                      changedButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      width: changedButton ? 50 : 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 10 : 50),
                      )),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     },
                //     child: Text(
                //       'Login',
                //       style: TextStyle(fontSize: 18),
                //     ),
                //     style: TextButton.styleFrom(
                //       minimumSize: Size(150, 40),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(50)),
                //     ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
