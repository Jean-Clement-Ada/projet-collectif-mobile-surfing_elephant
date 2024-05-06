import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomePage(),
    );
  }
}

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des spots"),
      ),
      body: const Center(
        child: Text("prochainement disponible"),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surfing Elephant"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image.asset("assets/images/logo_app.webp"),
            const Text(
                "Surfing Elephant",
              style: TextStyle(
                fontSize: 42,
              ),
            ),
            const Text("Surfez avec légèreté",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)
                ),
                onPressed: () => print("click btn"),
                child:  const Text("Afficher les spots",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),

            )
          ],
        ),
      )
    );
  }
}


