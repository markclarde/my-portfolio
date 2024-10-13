import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/header_section.dart';
import 'package:portfolio/components/hero_section.dart';
import 'package:portfolio/components/introduction_section.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatefulWidget {
  const MyPortfolioApp({super.key});

  @override
  _MyPortfolioAppState createState() => _MyPortfolioAppState();
}

class _MyPortfolioAppState extends State<MyPortfolioApp> {
  final ScrollController _scrollController = ScrollController();
  bool _isHeaderVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        // Scrolling down
        if (_isHeaderVisible) {
          setState(() {
            _isHeaderVisible = false; // Hide the header
          });
        }
      } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        // Scrolling up
        if (!_isHeaderVisible) {
          setState(() {
            _isHeaderVisible = true; // Show the header
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0C1B2A),
        body: Column(
          children: [
            AnimatedOpacity(
              opacity: _isHeaderVisible ? 1 : 0, // Control header visibility
              duration: const Duration(milliseconds: 300),
              child: const HeaderSection(), // Header section
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController, // Attach the scroll controller
                child: const Center(
                  child: Column(
                    children: [
                      HeroSection(),
                      SizedBox(height: 39),
                      // Introduction Section
                      IntroductionSection(),
                      SizedBox(height: 10),
                      // Skills Section
                      // SkillsSection(),
                      // Portfolio Section
                      // Footer Section
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: SizedBox(
        width: 600, // Set specific width for SkillsSection
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
      child: SizedBox(
        width: 800, // Set specific width for each skill item
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
      ),
    );
  }
}
