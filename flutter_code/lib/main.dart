import 'package:flutter_code/pages/event_page.dart';
import 'package:flutter_code/pages/form_page.dart';
import 'package:flutter_code/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/pages/description_spot_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Pour masquer la bannière de débogage
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent, // Utilisation de la même couleur principale que sur la page d'accueil
        appBarTheme: AppBarTheme(
          elevation: 0, // Suppression de l'ombre sous la barre d'applications
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _currentIndex == 0 ? "Surfing Elephant" : "Liste des spots",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomePage(),
            EventPage(),
            FormPage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: setCurrentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.waves),
              label: "Liste des spots",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Ajout",
            ),
          ],
        ),
      ),
    );
  }
}
