import 'package:flutter/material.dart';
import 'navbar.dart';
import 'hero_section.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// DRAWER (for mobile)
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

      /// PAGE CONTENT
      body: Column(
        children: const [
          Navbar(),
          HeroSection(),
        ],
      ),
    );
  }
}



class DrawerItem extends StatelessWidget {
  final String title;
  const DrawerItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

