import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/contact_section.dart';
import 'package:portfolio/components/footer_section.dart';
import 'package:portfolio/components/header_section.dart';
import 'package:portfolio/components/hero_section.dart';
import 'package:portfolio/components/introduction_section.dart';
import 'package:portfolio/components/skills_section.dart';

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

  void _showHeader() {
    setState(() {
      _isHeaderVisible = true; // Show the header when called
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Get the screen width
    final isLargeScreen = screenWidth > 600; // Define a breakpoint for large screens

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
                child: Center(
                  child: Column(
                    children: [
                      const HeroSection(),
                      // Introduction Section
                      const IntroductionSection(),
                      // Skills Section
                      SkillsSection(isLargeScreen: isLargeScreen), // Pass screen size info
                      const SizedBox(height: 150),
                      const ContactSection(),
                      const SizedBox(height: 50),
                      // Footer Section
                      FooterSection(
                        scrollController: _scrollController,
                        onScrollToTop: _showHeader, // Pass the callback
                      ),
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
