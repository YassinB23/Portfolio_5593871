import 'package:flutter/material.dart';
import 'user_data.dart';

class SettingsPage extends StatefulWidget {
  final UserData userData;
  const SettingsPage({super.key, required this.userData});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Checkbox-Variablen
  bool newsletterAbonniert = false;
  bool pushBenachrichtigungen = false;
  bool agbAkzeptiert = false;

  // Switch-Variablen
  bool dunklerModus = false;
  bool offlineModus = false;

  @override
  void initState() {
    super.initState();
    // Aktuelle Werte laden, falls vorher gespeichert
    newsletterAbonniert = widget.userData.newsletter;
    dunklerModus = widget.userData.darkMode;
    offlineModus = widget.userData.offlineMode;
    agbAkzeptiert = widget.userData.agbAkzeptiert;
    pushBenachrichtigungen = widget.userData.pushBenachrichtigungen;
  }

  void _speichern() {
    widget.userData.newsletter = newsletterAbonniert;
    widget.userData.darkMode = dunklerModus;
    widget.userData.offlineMode = offlineModus;
    widget.userData.agbAkzeptiert = agbAkzeptiert;
    widget.userData.pushBenachrichtigungen = pushBenachrichtigungen;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Einstellungen gespeichert')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Checkbox: Newsletter
            CheckboxListTile(
              title: const Text('Newsletter abonnieren'),
              value: newsletterAbonniert,
              onChanged: (value) {
                setState(() => newsletterAbonniert = value!);
              },
            ),
            // Checkbox: Push-Benachrichtigungen
            CheckboxListTile(
              title: const Text('Push-Benachrichtigungen'),
              value: pushBenachrichtigungen,
              onChanged: (value) {
                setState(() => pushBenachrichtigungen = value!);
              },
            ),
            // Checkbox: AGB akzeptieren
            CheckboxListTile(
              title: const Text('AGB akzeptieren'),
              value: agbAkzeptiert,
              onChanged: (value) {
                setState(() => agbAkzeptiert = value!);
              },
            ),
            const Divider(),

            // Switch: Dunkler Modus
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: dunklerModus,
              onChanged: (value) {
                setState(() => dunklerModus = value);
              },
            ),
            // Switch: Offline-Modus
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: offlineModus,
              onChanged: (value) {
                setState(() => offlineModus = value);
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _speichern,
              child: const Text('Speichern'),
            ),

            const SizedBox(height: 20),
            const Text(
              'Aktuelle Auswahl:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Newsletter: ${newsletterAbonniert ? "Ja" : "Nein"}'),
            Text('Push-Benachrichtigungen: ${pushBenachrichtigungen ? "Ja" : "Nein"}'),
            Text('AGB akzeptiert: ${agbAkzeptiert ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${dunklerModus ? "An" : "Aus"}'),
            Text('Offline-Modus: ${offlineModus ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}