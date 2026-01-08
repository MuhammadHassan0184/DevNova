import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 700;

          return Column(
            children: [
              // Top Content
              isMobile ? _mobileLayout() : _desktopLayout(),

               SizedBox(height: 30),
               Divider(color: Color(0xFF1F2937)),
               SizedBox(height: 20),

              // Copyright
              const Text(
                '© 2026 Muhammad Hassan • Flutter Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9CA3AF),
                  fontSize: 14,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  /// ---------------- DESKTOP ----------------
  Widget _desktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _aboutSection(
          align: CrossAxisAlignment.start,
          textAlign: TextAlign.left,
        ),
        _connectSection(
          align: CrossAxisAlignment.end,
        ),
      ],
    );
  }

  /// ---------------- MOBILE ----------------
  Widget _mobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _aboutSection(
          align: CrossAxisAlignment.center,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        _connectSection(
          align: CrossAxisAlignment.center,
        ),
      ],
    );
  }

  /// ---------------- ABOUT ----------------
  Widget _aboutSection({
    required CrossAxisAlignment align,
    required TextAlign textAlign,
  }) {
    return Column(
      crossAxisAlignment: align,
      children: [
        const Text(
          'Flutter Developer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 280,
          child: Text(
            'Creating beautiful and performant mobile applications '
            'with passion and dedication.',
            textAlign: textAlign,
            style: const TextStyle(
              color: Color(0xFF9CA3AF),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  /// ---------------- CONNECT ----------------
  Widget _connectSection({
    required CrossAxisAlignment align,
  }) {
    return Column(
      crossAxisAlignment: align,
      children: [
        const Text(
          'Connect',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _SocialIcon(Icons.code),      // GitHub
            SizedBox(width: 12),
            _SocialIcon(Icons.business),  // LinkedIn
            SizedBox(width: 12),
            _SocialIcon(Icons.email),     // Email
          ],
        ),
      ],
    );
  }
}

/// ---------------- SOCIAL ICON ----------------
class _SocialIcon extends StatelessWidget {
  final IconData icon;
  const _SocialIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF1F2937)),
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
