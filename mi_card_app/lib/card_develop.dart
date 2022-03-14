import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:mi_card_app/colors.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:url_launcher/url_launcher.dart';

class CardDevelop extends StatelessWidget {
  const CardDevelop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimary,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                radius: 54,
                backgroundColor: darkPrimaryPurple,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'José Hilton',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: darkPrimaryPurple,
                    ),
                  ),
                  Text(
                    'Programador',
                    style: TextStyle(
                      fontFamily: 'MyFlutterApp',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: darkSecondaryPurple,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildCardContact(
                      () => openBrowserTab(
                          'https://github.com/jhiltonsantos/jhiltonsantos'),
                      Typicons.github),
                  buildCardContact(
                      () => openBrowserTab(
                          'https://www.linkedin.com/in/hilton-santos-890a05188/'),
                      Typicons.linkedin),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildCardContact(
                      () => openBrowserTab(
                          'https://www.instagram.com/_hiltonsantos_/'),
                      FontAwesome.instagram),
                  buildCardContact(() {
                    launch('mailto:jhilton930@gmail.com?subject=Olá Hilton');
                  }, Typicons.at),
                ],
              ),
            ],
          )
        ],
      )),
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

void openBrowserTab(String url) async {
  FlutterWebBrowser.openWebPage(
      url: url,
      customTabsOptions: const CustomTabsOptions(
          colorScheme: CustomTabsColorScheme.dark,
          instantAppsEnabled: true,
          showTitle: true,
          urlBarHidingEnabled: true));
}

buildCardContact(Function()? onPressed, IconData icon) {
  return RawMaterialButton(
    onPressed: onPressed,
    elevation: 2.0,
    fillColor: darkSecondaryPurple,
    child: Icon(
      icon,
      size: 60.0,
    ),
    padding: const EdgeInsets.all(15.0),
    shape: const CircleBorder(),
  );
}
