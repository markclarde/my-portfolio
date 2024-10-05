import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0C1B2A), // Dark background color
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              HeaderSection(),
              // Hero Section
              HeroSection(),
              // Introduction Section
              IntroductionSection(),
              // Skills Section
              SkillsSection(),
              // Portfolio Section
              // PortfolioSection(),
              // Footer Section
              // FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Zonayed Ahmed', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          Row(
            children: [
              _navButton('About'),
              _navButton('Skill'),
              _navButton('Portfolio'),
              _navButton('Contact'),
              _navButton('Resume', isHighlighted: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navButton(String text, {bool isHighlighted = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: isHighlighted ? Colors.green : Colors.white,
          backgroundColor: isHighlighted ? Colors.green.withOpacity(0.1) : Colors.transparent,
        ),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Hello! I am', style: TextStyle(color: Colors.green, fontSize: 28)),
          const SizedBox(height: 10),
          const Text('Zonayed Ahmed', style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text('Full Stack Developer', style: TextStyle(color: Colors.white70, fontSize: 22)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Get Resume'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
                child: const Text('About Me'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello! I'm Zonayed Ahmed, a passionate software engineer...",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Get Resume'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
                  child: const Text('My Skills'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/profile_image.png'), // Profile image
          ),
        ],
      ),
    );
  }
}

// Similarly, you can structure the SkillsSection, PortfolioSection, and FooterSection...

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Skills', style: TextStyle(color: Colors.white, fontSize: 28)),
          SizedBox(height: 20),
          SkillItem(title: 'React', level: 0.9),
          SkillItem(title: 'Next.js', level: 0.75),
          SkillItem(title: 'Node.js', level: 0.8),
          // Add more skills as per the design
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String title;
  final double level;

  const SkillItem({super.key, required this.title, required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: level,
            color: Colors.green,
            backgroundColor: Colors.white24,
            minHeight: 8,
          ),
        ],
      ),
    );
  }
}
