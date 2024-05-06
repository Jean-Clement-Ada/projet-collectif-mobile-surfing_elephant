import 'package:flutter_code/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Surfing Elephant"),
        ),
        body: HomePage(),
        bottomNavigationBar:BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                 label: "Accueil"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.waves),
                label: "Liste des spots"
            ),
          ],
        ) ,
      ),
    );
  }
}
