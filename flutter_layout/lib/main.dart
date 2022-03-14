import 'package:flutter/material.dart';
import 'package:flutter_layout/questao_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Questao01(),
    );
  }
}

Widget buildContainer(String text, Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
    child: Text(text),
  );
}
