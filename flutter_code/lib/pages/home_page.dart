import 'package:flutter_code/pages/event_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_app.webp"),
          const Text(
            "Surfing Elephant",
            style: TextStyle(
              fontSize: 42,
            ),
          ),
          const Text(
            "Surfez avec légèreté",
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    );
  }
}