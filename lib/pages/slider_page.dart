import 'package:flutter/material.dart';
import 'user_data.dart';

class SliderPage extends StatefulWidget {
  final UserData userData;
  const SliderPage({super.key, required this.userData});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double value = 50;

  @override
  void initState() {
    super.initState();
    value = widget.userData.sliderValue;
  }

  void saveSlider() {
    widget.userData.updateSlider(value);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Slider-Wert gespeichert: ${value.round()}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              onChanged: (val) => setState(() => value = val),
            ),
            Text('Aktueller Wert: ${value.round()}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveSlider,
              child: const Text('Speichern'),
            ),
          ],
        ),
      ),
    );
  }
}