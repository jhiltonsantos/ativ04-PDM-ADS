import 'package:flutter/material.dart';
import 'package:mi_card_app/card_develop.dart';

class MiPage extends StatelessWidget {
  const MiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          const Text(
            'José Hilton',
            style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          buildCard('+55 99 9987 4444', Icons.phone),
          buildCard('jhilton930@gmail.com', Icons.email),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CardDevelop()));
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}

buildCard(String text, IconData icon) {
  return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.teal,
            fontSize: 20.0,
          ),
        ),
      ));
}
