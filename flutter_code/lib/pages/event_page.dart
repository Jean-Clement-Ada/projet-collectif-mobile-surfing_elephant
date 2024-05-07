import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code/pages/description_spot_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});




  @override
  State<EventPage> createState() => _EventPageState();
}
class _EventPageState extends State<EventPage> {

  final events = [
    {
      "spotPhoto": "lien photo",
      "nameSpot": "Biscarosse",
      "place": "Sud_Ouest",
      "difficulty": "1⭐",
    },
    {
      "spotPhoto": "lien photo",
      "nameSpot": "Nazaret",
      "place": "Portugal",
      "difficulty": "5⭐"
    },
    {
      "spotPhoto": "lien photo",
      "nameSpot": "SuperBank",
      "place": "Gold Coast, Australia",
      "difficulty": "4⭐"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final spotPhoto = event["spotPhoto"];
          final nameSpot = event["nameSpot"];
          final place = event["place"];
          final difficulty = event["difficulty"];


          return GestureDetector(
              onTap: () {
                // Naviguer vers la page de description ici
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DescriptionSpotPage(event: event)),
                );
              },

           child: Card(
            child: ListTile(
              leading: Image.asset("assets/images/logo_app.webp"),
              title: Text("$nameSpot"),
              subtitle: Text("$place" + " " + "$difficulty"),
              trailing: Icon(Icons.more_vert),
            )
            ),
          );
        },
      ),
    );
  }
}

