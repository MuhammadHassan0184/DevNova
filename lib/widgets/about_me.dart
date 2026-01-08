import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xFF1C1F34), // dark background
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            'About Me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // Subtitle
          Text(
            "I'm a dedicated Flutter developer with a passion for creating beautiful and functional mobile applications",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 40),
          // Feature Cards
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildFeatureCard(
                width: width > 1200 ? 386 : 250, // wider on large screens
                icon: Icons.code,
                title: "Clean Code",
                description: "Writing maintainable and scalable code following best practices",
              ),
              _buildFeatureCard(
                width: width > 1200 ? 386 : 250,
                icon: Icons.phone_iphone,
                title: "Cross-Platform",
                description: "Building apps and websites that work seamlessly across all platforms",
              ),
              _buildFeatureCard(
                width: width > 1200 ? 386 : 250,
                icon: Icons.flash_on,
                title: "Performance",
                description: "Optimizing applications for speed and smooth user experience",
              ),
            ],
          ),
          SizedBox(height: 40),
          // My Journey Section
          Container(
            width: width > 1200 ? 1200 : double.infinity, // increased horizontal size
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xFF232742),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Journey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "I discovered my passion for Flutter development when I realized its incredible potential for creating beautiful, natively compiled applications across multiple platforms. "
                  "The framework's ability to build for mobile, web, and desktop from a single codebase fascinated me. "
                  "Since then, I've been dedicated to mastering Flutter and Dart, creating various projects including responsive websites, mobile apps, and progressive web apps that showcase the power of cross-platform development. "
                  "I'm constantly learning and staying up-to-date with the latest Flutter updates and best practices to deliver top-notch applications and websites.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required double width,
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: width, // set container width
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF232742),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF2C2F4A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.blueAccent, size: 28),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
