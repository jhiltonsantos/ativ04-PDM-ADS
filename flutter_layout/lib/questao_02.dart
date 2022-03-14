import 'package:flutter/material.dart';
import 'package:flutter_layout/main.dart';

class Questao02 extends StatelessWidget {
  const Questao02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildContainer('', Colors.red),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildContainer('', Colors.yellow),
                  buildContainer('', Colors.green),
                ],
              ),
              buildContainer('', Colors.blue)
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}
