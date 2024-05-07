import 'package:flutter_code/pages/event_page.dart';
import 'package:flutter_code/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0; // sert à définir la page current à 0

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index; //sert à interroger sur quel page on est pour le modifier ensuite

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Surfing Elephant"),
            Text("Liste des spots")
          ] [_currentIndex],
        ),
        body: [
          HomePage(),
         EventPage()  //avec ca on définis Event comme page 2
      ][_currentIndex], // et on questionne sur quel page on est avec current
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index), //actionne currentindex(donc changement de page depuis la barre).
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          iconSize: 32,
          elevation: 10,
          // trait d'ombre sur la barre
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Accueil"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.waves),
                label: "Liste des spots"
            ),
          ],
        ),
      ),
    );
  }
}
