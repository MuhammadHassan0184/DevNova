import 'package:devnova/widgets/about_me.dart';
import 'package:devnova/widgets/contact_section.dart';
import 'package:devnova/widgets/footer_section.dart';
import 'package:devnova/widgets/hero_section.dart';
import 'package:devnova/widgets/main_layout.dart';
import 'package:devnova/widgets/navbar.dart';
import 'package:devnova/widgets/project_section.dart';
import 'package:devnova/widgets/skil_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: const Color(0xFF020617),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 60),
            DrawerItem('Home'),
            DrawerItem('Skills'),
            DrawerItem('Projects'),
            DrawerItem('Contact'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Navbar(),
            HeroSection(),
            AboutMeSection(),
            SkillsSection(),
            ProjectsSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
