import 'package:flutter/material.dart';
import 'package:gpui/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Game Predictions", routes: {
      "/": (context) => const Login(),
      "/dash": (context) => const DashBoard()
    });
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Hello Dashboard");
  }
}
