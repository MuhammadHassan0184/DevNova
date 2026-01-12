import 'package:devnova/widgets/keys/section_keys.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 900;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          color: const Color(0xFF020617),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// LOGO
              const Text(
                '𝔻𝕖𝕧ℕ𝕠𝕧𝕒',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              /// DESKTOP MENU
              if (!isMobile)
                Row(
                  children: const [
                    NavItem('Home'),
                    NavItem('Skills'),
                    NavItem('Projects'),
                    NavItem('Contact'),
                  ],
                ),

              /// MOBILE MENU ICON
              if (isMobile)
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class NavItem extends StatefulWidget {
  final String title;
  const NavItem(this.title, {super.key});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHovering = false;

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: GestureDetector(
          onTap: () {
            if (widget.title == 'Skills') {
              _scrollTo(skillsKey);
            } else if (widget.title == 'Projects') {
              _scrollTo(projectsKey);
            } else if (widget.title == 'Contact') {
              _scrollTo(contactKey);
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFE5E7EB),
                ),
              ),
               SizedBox(height: 4),
              // Underline
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 2,
                width: _isHovering ? 30 : 0,
                color: Color(0xFFE5E7EB), // color of underline
              ),
            ],
          ),
        ),
      ),
    );
  }
}

