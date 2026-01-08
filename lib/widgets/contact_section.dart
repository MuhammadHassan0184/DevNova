import 'package:devnova/widgets/keys/section_keys.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final contentWidth = width > 1200 ? 1240.0 : double.infinity;
    final isMobile = width < 900;

    return Container(
      key: contactKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 80),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF060B1A),
            Color(0xFF0B1229),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Container(
          width: contentWidth, // 🔥 SAME WIDTH LOGIC AS ABOUT ME
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Get In Touch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Have a project in mind? Let's work together to bring your ideas to life",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 60),

              isMobile
                  ? Column(
                      children: [
                        contactInfo(),
                        SizedBox(height: 30),
                        callToAction(),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: contactInfo()),
                        SizedBox(width: 40),
                        Expanded(child: callToAction()),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),

        infoTile(
          icon: Icons.email_outlined,
          title: "Email",
          value: "your.email@example.com",
        ),
        SizedBox(height: 20),

        infoTile(
          icon: Icons.phone_outlined,
          title: "Phone",
          value: "+1 (234) 567-890",
        ),
        SizedBox(height: 20),

        infoTile(
          icon: Icons.location_on_outlined,
          title: "Location",
          value: "Your City, Country",
        ),
      ],
    );
  }

  Widget infoTile({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Color(0xFF1D4ED8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ],
    );
  }

  Widget callToAction() {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          colors: [
            Color(0xFF2563EB),
            Color(0xFF4F46E5),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's Build Something Amazing",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "I'm always open to discussing new projects, creative ideas, or opportunities to be part of your vision.",
            style: TextStyle(
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
