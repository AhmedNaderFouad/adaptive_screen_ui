
import 'package:adaptive_ui/screens/home/widgets/feature_box.dart';
import 'package:adaptive_ui/screens/home/widgets/how_it_works_box.dart';
import 'package:adaptive_ui/widgets/custom_app_bar.dart';
import 'package:adaptive_ui/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              const Text(
                'SignSight',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Breaking communication barriers with real-time sign language translation',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Start Translating'),
              ),
              const SizedBox(height: 40.0),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: FeatureBox(
                            icon: Icons.camera_alt,
                            title: 'Capture Signs',
                            description: 'Use your camera to capture sign language in real-time.',
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: FeatureBox(
                            icon: Icons.translate,
                            title: 'Text Translation',
                            description: 'Convert signs to readable text instantly.',
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: FeatureBox(
                            icon: Icons.volume_up,
                            title: 'Voice Output',
                            description: 'Listen to spoken translations for better communication.',
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Column(
                      children: [
                        FeatureBox(
                          icon: Icons.camera_alt,
                          title: 'Capture Signs',
                          description: 'Use your camera to capture sign language in real-time.',
                        ),
                        SizedBox(height: 20.0),
                        FeatureBox(
                          icon: Icons.translate,
                          title: 'Text Translation',
                          description: 'Convert signs to readable text instantly.',
                        ),
                        SizedBox(height: 20.0),
                        FeatureBox(
                          icon: Icons.volume_up,
                          title: 'Voice Output',
                          description: 'Listen to spoken translations for better communication.',
                        ),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(height: 40.0),
              const HowItWorksBox(),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Start Translating'),
                  ),
                  const SizedBox(width: 20.0),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('View History'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
