import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  String name = '';
  String email = '';
  String aboutMe = '';
  double sliderValue = 50;
  bool newsletter = false;
  bool darkMode = false;
  bool offlineMode = false;
  
  // NEUE Felder hinzufügen:
  bool agbAkzeptiert = false;
  bool pushBenachrichtigungen = false;

  void updateProfile(String n, String e, String a) {
    name = n;
    email = e;
    aboutMe = a;
    notifyListeners();
  }

  void updateSlider(double value) {
    sliderValue = value;
    notifyListeners();
  }

  // Update Methode erweitern oder eine neue schreiben:
  void updateSettings({
    required bool news,
    required bool dark,
    required bool offline,
    required bool agb,
    required bool push,
  }) {
    newsletter = news;
    darkMode = dark;
    offlineMode = offline;
    agbAkzeptiert = agb;
    pushBenachrichtigungen = push;
    ChangeNotifier();
  }
}