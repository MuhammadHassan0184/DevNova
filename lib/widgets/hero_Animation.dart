import 'package:flutter/material.dart';

class AnimatedHeroText extends StatefulWidget {
  const AnimatedHeroText({super.key});

  @override
  State<AnimatedHeroText> createState() => _AnimatedHeroTextState();
}

class _AnimatedHeroTextState extends State<AnimatedHeroText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.3, // start slightly transparent
      end: 1.0,   // fully visible
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // 🔁 repeat forever with reverse
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: const Text(
        "Hello, My name 'Muhammad Hassan', I'm",
        style: TextStyle(
          color: Color(0xFF60A5FA),
          fontSize: 16,
        ),
      ),
    );
  }
}
