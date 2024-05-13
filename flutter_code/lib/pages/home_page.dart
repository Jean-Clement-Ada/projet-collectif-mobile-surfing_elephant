import 'package:flutter_code/pages/event_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Arrondir les bords avec un rayon de 20
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8, // Utilisation de 80% de la largeur de l'écran
            padding: const EdgeInsets.all(20), // Ajouter un padding à l'intérieur du conteneur
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/surf_home.jpg"), // Chemin de votre image de vague
                fit: BoxFit.cover, // Adapter l'image pour couvrir tout le conteneur
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo_app.webp"),
                const SizedBox(height: 20),
                Text(
                  "Surfing Elephant",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Surfez avec légèreté",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}