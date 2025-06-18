import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';
import 'user_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portfolio App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Willkommen im Portfolio von Yassin!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(userData: userData),
                  ),
                );
              },
              child: const Text('Zur Profil-Seite'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliderPage(userData: userData),
                  ),
                );
              },
              child: const Text('Zur Slider-Seite'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(userData: userData),
                  ),
                );
              },
              child: const Text('Zur Einstellungs-Seite'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(userData: userData),
                  ),
                );
              },
              child: const Text('Zur Zusammenfassung'),
            ),
          ],
        ),
      ),
    );
  }
}