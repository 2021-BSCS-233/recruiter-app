import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, I\'m Dave Smith, a UI/UX Designer having two years of working experience. I\'ve contributed to a range of projects across diverse sectors, including healthcare, inventory management, human resources, and gaming. My focus is on delivering user-centric design solutions that enhance user experience and drive engagement.',
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
    );
  }
}
