import 'package:flutter/material.dart';
import 'user_data.dart';

class ProfilePage extends StatefulWidget {
  final UserData userData;
  const ProfilePage({super.key, required this.userData});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String aboutMe = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (value) => name = value ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                onSaved: (value) => email = value ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Über mich'),
                onSaved: (value) => aboutMe = value ?? '',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.save();
                  widget.userData.updateProfile(name, email, aboutMe);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Gespeichert: $name, $email, $aboutMe')),
                  );
                },
                child: const Text('Speichern'),
              )
            ],
          ),
        ),
      ),
    );
  }
}