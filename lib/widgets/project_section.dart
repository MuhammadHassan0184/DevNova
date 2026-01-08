// ignore_for_file: sized_box_for_whitespace

import 'package:devnova/widgets/keys/section_keys.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double cardWidth;
    if (width > 1200) {
      cardWidth = 380;
    } else if (width > 800) {
      cardWidth = 340;
    } else {
      cardWidth = width - 40;
    }

    return Container(
      key: projectsKey,
      width: double.infinity,
      color: Color(0xFF0F172A),
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Featured Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Some of the projects I've worked on that showcase my skills",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 50),

          /// SAME WIDTH AS ABOUT ME SECTION
          Container(
            width: width > 1200 ? 1240 : double.infinity,
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              alignment: WrapAlignment.center,
              children: [
                _projectCard(
                  width: cardWidth,
                  image: 'assets/E_comress.jpg',
                  title: 'E-Commerce Platform',
                  description:
                      'A full-featured e-commerce web app with cart, checkout, and Firebase backend.',
                  tags: ['Flutter Web', 'Firebase', 'REST API'],
                ),
                _projectCard(
                  width: cardWidth,
                  image: 'assets/blog.jpg',
                  title: 'Portfolio & Blog Website',
                  description:
                      'Responsive Flutter web portfolio with animations, SEO, and dynamic content.',
                  tags: ['Flutter Web', 'Responsive', 'SEO'],
                ),
                _projectCard(
                  width: cardWidth,
                  image: 'assets/coding.jpg',
                  title: 'Business Dashboard',
                  description:
                      'Real-time analytics dashboard with charts and multi-platform support.',
                  tags: ['Flutter', 'Bloc', 'API'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _projectCard({
    required double width,
    required String image,
    required String title,
    required String description,
    required List<String> tags,
  }) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.asset(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 14),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: tags
                      .map(
                        (tag) => Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF1D4ED8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            tag,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.code, color: Colors.white54, size: 18),
                    SizedBox(width: 6),
                    Text(
                      'Code',
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.open_in_new, color: Colors.white54, size: 18),
                    SizedBox(width: 6),
                    Text(
                      'Demo',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
