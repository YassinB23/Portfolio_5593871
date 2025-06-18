import 'package:flutter/material.dart';
import 'user_data.dart';

class SummaryPage extends StatelessWidget {
  final UserData userData;
  const SummaryPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zusammenfassung')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('Name: ${userData.name}'),
            Text('E-Mail: ${userData.email}'),
            Text('Über mich: ${userData.aboutMe}'),
            Text('Slider-Wert: ${userData.sliderValue.round()}'),
            Text('Newsletter: ${userData.newsletter ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${userData.darkMode ? "An" : "Aus"}'),
            Text('Offline-Modus: ${userData.offlineMode ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}