import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth; // Get the width from constraints

        return Container(
          width: screenWidth > 600 ? 1250 : screenWidth, // Full width on mobile or 1250 on larger screens
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), // Adjust padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Mark Clarde',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Use a conditional to display buttons as a Row or Drawer
              screenWidth > 600
                  ? Row(
                      children: [
                        _navButton('ABOUT'),
                        const SizedBox(width: 20), // Add space between buttons
                        _navButton('SKILL'),
                        const SizedBox(width: 20),
                        _navButton('PORTFOLIO'),
                        const SizedBox(width: 20),
                        _navButton('CONTACT'),
                        const SizedBox(width: 20),
                        _navButton('BLOG'),
                        const SizedBox(width: 20),
                        _navButton('RESUME', isStaticBorder: true), // Resume button with static border
                      ],
                    )
                  : IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white), // Menu icon
                      onPressed: () {
                        _openDrawer(context); // Open the drawer on tap
                      },
                    ),
            ],
          ),
        );
      },
    );
  }

  // Method to open the drawer
  void _openDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.black, // Background color of the drawer
          child: Column(
            mainAxisSize: MainAxisSize.min, // Size the column to fit its content
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _navButton('ABOUT'),
              _navButton('SKILL'),
              _navButton('PORTFOLIO'),
              _navButton('CONTACT'),
              _navButton('BLOG'),
              _navButton('RESUME', isStaticBorder: true),
            ],
          ),
        );
      },
    );
  }

  Widget _navButton(String text, {bool isStaticBorder = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 4.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click, // Change cursor to pointer on hover
        child: GestureDetector(
          onTap: () {}, // Handle tap event
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              border: isStaticBorder
                  ? Border.all(color: Colors.green, width: 2) // Static green border
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
