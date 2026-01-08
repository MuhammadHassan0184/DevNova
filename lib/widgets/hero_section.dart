// ignore_for_file: deprecated_member_use

import 'package:devnova/widgets/hero_Animation.dart';
import 'package:devnova/widgets/keys/section_keys.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 80,
            vertical: isMobile ? 80 : 120,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0F172A),
                Color(0xFF1E3A8A),
                Color(0xFF1E40AF),
              ],
            ),
          ),
          child: isMobile
              ? Column(
                  children: [
                    _leftContent(isMobile),
                    const SizedBox(height: 50),
                    _rightImage(isMobile),
                  ],
                )
              : Row(
                  children: [
                    Expanded(flex: 5, child: _leftContent(isMobile)),
                    const SizedBox(width: 40),
                    Expanded(flex: 4, child: _rightImage(isMobile)),
                  ],
                ),
        );
      },
    );
  }

  /// LEFT SIDE
  Widget _leftContent(bool isMobile) {
    return Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
         const AnimatedHeroText(),

        SizedBox(height: 4),

        Text(
          "Flutter Developer",
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: isMobile ? 38 : 56,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),

        Text(
          "Building beautiful cross-platform mobile applications",
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFFCBD5E1),
          ),
        ),
        const SizedBox(height: 24),

        SizedBox(
          width: isMobile ? double.infinity : 520,
          child: Text(
            "Passionate about creating seamless user experiences with Flutter. I specialize in developing high-performance mobile apps for iOS and Android.",
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF94A3B8),
              height: 1.6,
            ),
          ),
        ),
        const SizedBox(height: 32),

        /// BUTTONS
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 12,
          children: [
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: const Color(0xFF2563EB),
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
  ),
  onPressed: () => _scrollTo(contactKey), // ✅ CONTACT
  child: const Text("Get in Touch", style: TextStyle(color: Colors.white)),
),

ElevatedButton(
  style: ElevatedButton.styleFrom(
    side: const BorderSide(color: Color(0xFF2563EB)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
  ),
  onPressed: () => _scrollTo(projectsKey), // ✅ PROJECTS
  child: const Text("View Project", style: TextStyle(color: Colors.white)),
),

          ],
        ),
       SizedBox(height: 28),

        /// SOCIAL ICONS
        Row(
          mainAxisAlignment:
              isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: const [
            Icon(Icons.code, color: Colors.white70),
            SizedBox(width: 20),
            Icon(Icons.linked_camera, color: Colors.white70),
            SizedBox(width: 20),
            Icon(Icons.email_outlined, color: Colors.white70),
          ],
        ),
      ],
    );
  }

  /// RIGHT IMAGE
  Widget _rightImage(bool isMobile) {
    return Container(
      height: isMobile ? 260 : 420,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 30,
            offset: Offset(10, 30),
          ),
        ],
        image: const DecorationImage(
          image: AssetImage("assets/coding.jpg",),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  void _scrollTo(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }
}
}
