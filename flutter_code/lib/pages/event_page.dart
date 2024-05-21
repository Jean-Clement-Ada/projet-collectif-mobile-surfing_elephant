import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code/pages/description_spot_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}
class _EventPageState extends State<EventPage> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("records").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (!snapshot.hasData) {
            return Text("Aucun spot");
          }

          List<DocumentSnapshot> records = snapshot.data!.docs;

          return ListView.builder(
            itemCount: records.length,
            itemBuilder: (context, index) {
              final event = records[index];
              final data = event.data() as Map<String, dynamic>;

              // Vérifiez que les champs existent avant de les utiliser
              final nameSpot = data.containsKey('nameSpot') && data['nameSpot'] is String ? data['nameSpot'] : 'Unknown';
              final place = data.containsKey('place') && data['place'] is String ? data['place'] : 'Unknown';
              final difficulty = data.containsKey('difficulty') && data['difficulty'] is String ? data['difficulty'] : 'Unknown';
              final image = data.containsKey('image') && data['image'] is String ? data['image'] : 'assets/images/default_image.png';

              return GestureDetector(
                onTap: () {
                  // Naviguer vers la page de description ici
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescriptionSpotPage(event: data)),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: Image.network(image),
                    title: Text(nameSpot),
                    subtitle: Text("$place $difficulty"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

