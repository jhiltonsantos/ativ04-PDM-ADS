import 'package:flutter/material.dart';
import 'package:flutter_layout/main.dart';
import 'package:flutter_layout/questao_02.dart';

class Questao01 extends StatelessWidget {
  const Questao01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            buildContainer('Container 1', Colors.white),
            buildContainer('Container 2', Colors.red),
            buildContainer('Container 3', Colors.blue),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Questao02()));
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
