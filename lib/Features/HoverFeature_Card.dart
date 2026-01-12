// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

class HoverFeatureCard extends StatefulWidget {
  final double width;
  final IconData icon;
  final String title;
  final String description;

  const HoverFeatureCard({
    super.key,
    required this.width,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<HoverFeatureCard> createState() => _HoverFeatureCardState();
}

class _HoverFeatureCardState extends State<HoverFeatureCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: widget.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF232742),
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    // offset: const Offset(0, 8),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF2C2F4A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(widget.icon, color: Colors.blueAccent, size: 28),
            ),
            const SizedBox(height: 15),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.description,
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
