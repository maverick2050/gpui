import 'dart:html';

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var divider = Row(
  children: const [
    Expanded(
      child: Divider(
        color: Colors.black,
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text("OR"),
    ),
    Expanded(
      child: Divider(color: Colors.black),
    ),
  ],
);

var _usernamecontroller = new TextEditingController();
var _passwordcontroller = new TextEditingController();

var vendors = //Vendor login
    Row(
  children: [
    //google stack
    Stack(children: [
      Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          )),
      Positioned(
          child: IconButton(
        highlightColor: Colors.cyanAccent,
        icon: const Icon(EvaIcons.google),
        iconSize: 30,
        color: Colors.redAccent,
        onPressed: () => {},
      ))
    ]),
    const Spacer(),
    //facebook stack
    Stack(children: [
      Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          )),
      Positioned(
          child: IconButton(
        highlightColor: Colors.cyanAccent,
        icon: const Icon(EvaIcons.facebook),
        iconSize: 30,
        color: Colors.blueAccent,
        onPressed: () => {},
      ))
    ]),
    const Spacer(),
    //Linkedin stack
    Stack(children: [
      Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          )),
      Positioned(
          child: IconButton(
        highlightColor: Colors.cyanAccent,
        icon: const Icon(EvaIcons.linkedin),
        iconSize: 30,
        color: Colors.blueAccent,
        onPressed: () => {},
      ))
    ]),
    const Spacer(),
    //Twitter stack
    Stack(children: [
      Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          )),
      Positioned(
          child: IconButton(
        highlightColor: Colors.cyanAccent,
        icon: const Icon(EvaIcons.twitter),
        iconSize: 30,
        color: Colors.blueAccent,
        onPressed: () => {},
      ))
    ]),
    const Spacer(),
    //github stack
    Stack(children: [
      Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          )),
      Positioned(
          child: IconButton(
        highlightColor: Colors.cyanAccent,
        icon: const Icon(EvaIcons.github),
        iconSize: 30,
        color: Colors.blueGrey,
        onPressed: () => {},
      ))
    ])
  ],
);

var rightColumn = Expanded(
    flex: 2,
    child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/chleague.jpg"),
                fit: BoxFit.fill))));
bool _obscureText = true;
var leftColumn = Expanded(
    flex: 2,
    child: Container(
        margin:
            const EdgeInsets.only(left: 200, top: 140, right: 200, bottom: 270),
        decoration: const BoxDecoration(color: Colors.white12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: const [
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    color: Colors.black),
              ),
              Icon(
                EvaIcons.logIn,
                size: 40,
                color: Colors.black,
              )
            ]),
            const SizedBox(
              height: 50,
            ),
            vendors,
            const SizedBox(
              height: 30,
            ),
            divider,
            const SizedBox(
              height: 30,
            ),
            const Text("E-mail"),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: TextField(
                    controller: _usernamecontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(EvaIcons.emailOutline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.redAccent, width: 1.0))))),
            const Text("Password"),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: TextField(
                    controller: _passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon((_obscureText
                                ? EvaIcons.lockOutline
                                : EvaIcons.unlockOutline)),
                            onPressed: () {}),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.redAccent, width: 1.0))))),
            Row(children: [
              Expanded(
                  child: CheckboxListTile(
                checkColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                value: true,
                onChanged: (bool? newval) {},
                title: const Text(
                  "Remember me",
                  style: TextStyle(
                      color: Colors.indigoAccent, fontWeight: FontWeight.bold),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold),
                  ))
            ]),
            const SizedBox(
              height: 8,
            ),
            Row(children: [
              Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.indigoAccent),
                      onPressed: () async {
                        var body = {
                          "email": _usernamecontroller.text,
                          "id": 0,
                          "password": _passwordcontroller.text
                        };

                        var response = await http.post(
                            Uri.parse('http://localhost:8080/auth'),
                            headers: {"Content-Type": "application/json"},
                            body: jsonEncode(body));

                        if (response.statusCode == HttpStatus.ok) {
                          print("succes");
                        } else {
                          print("fail");
                        }
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 2.5,
                            fontSize: 15,
                            letterSpacing: 2),
                      ))),
            ]),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(children: [
                  const Text(
                    "Not registered yet?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent),
                      ))
                ])),
          ],
        )));

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: Row(children: [leftColumn, rightColumn]));
  }
}
