import 'package:flutter/material.dart';

class DescriptionSpotPage extends StatelessWidget {
  final Map<String, dynamic>? event;

  const DescriptionSpotPage({Key? key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (event == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("No Event Selected"),
        ),
        body: Center(
          child: Text("No event data available."),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(event!["nameSpot"]),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Spot Photo: ${event!["spotPhoto"]}"),
              Text("Place: ${event!["place"]}"),
              Text("Difficulty: ${event!["difficulty"]}"),
              Text("Season: ${event!["season"]}"),
              Text("Influencers: ${event!["influencers"]}"),

              // Ajoutez d'autres informations ici selon vos besoins
            ],
          ),
        ),
      );
    }
  }
}
