
import 'package:flutter/material.dart';

class HowItWorksBox extends StatelessWidget {
  const HowItWorksBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How It Works',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text('1. Point your camera at sign language gestures.'),
          const SizedBox(height: 5.0),
          const Text('2. Press and hold the record button to capture signs.'),
          const SizedBox(height: 5.0),
          const Text('3. View the translation as text or listen to voice output.'),
          const SizedBox(height: 5.0),
          const Text('4. All translations are saved in your History for future reference.'),
        ],
      ),
    );
  }
}
