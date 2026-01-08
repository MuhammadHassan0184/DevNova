import 'package:flutter/material.dart';

import 'package:devnova/widgets/keys/section_keys.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      key: skillsKey, // ✅ USE SHARED KEY
      color: Colors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Skills & Expertise',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Technologies and tools I work with to build amazing applications",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildSkillCard(
                width: width > 1200 ? 450 : 300,
                title: 'Core Skills',
                skills: {
                  'Flutter': 1,
                  'Dart': 0.9,
                  'Flutter Web': 0.85,
                  'State Management': 0.85,
                },
              ),
              _buildSkillCard(
                width: width > 1200 ? 450 : 300,
                title: 'Backend & Tools',
                skills: {
                  'Firebase': 0.8,
                  'REST APIs': 0.85,
                  'Git & GitHub': 0.75,
                  'Responsive Design': 0.95,
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


  Widget _buildSkillCard({
    required double width,
    required String title,
    required Map<String, double> skills,
  }) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF232742),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          // Skills list
          Column(
            children: skills.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: _buildSkillProgress(entry.key, entry.value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillProgress(String skill, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(skill, style: const TextStyle(color: Colors.white70)),
            Text('${(value * 100).toInt()}%', style: const TextStyle(color: Colors.white70)),
          ],
        ),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: value,
          backgroundColor: const Color(0xFF0B1320),
          color: Colors.blueAccent,
          minHeight: 6,
        ),
      ],
    );
  }

