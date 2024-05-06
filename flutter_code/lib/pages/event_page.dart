import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});


   final events = [
     {
       "spotPhoto" : "lien photo",
       "nameSpot" : "nom du spot",
       "place" : "lieu",
       "difficulty": "level",
     }
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des spots"),
      ),
      body:  Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset("image Api"),
                title: Text("Nom du spot"),
                subtitle: Text("Lieu" + "difficulté"),
                trailing: Icon(Icons.abc_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
