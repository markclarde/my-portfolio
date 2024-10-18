import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final bool isLargeScreen;
  final double? sectionWidth; // Optional width parameter

  const SkillsSection({super.key, required this.isLargeScreen, this.sectionWidth});

  @override
  Widget build(BuildContext context) {
    // Get screen width from MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;

    // Set a default width or use the provided width
    final contentWidth = sectionWidth ?? (isLargeScreen ? 1600 : screenWidth * 0.6);

    // Adjust padding based on screen size
    final horizontalPadding = screenWidth > 1200 ? 60.0 : 50.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding), // Responsive padding
      child: Center( // Center the content horizontally
        child: SizedBox(
          width: contentWidth, // Set specific width for SkillsSection
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // RotatedBox section (left side), visible only for large screens
              if (screenWidth > 1200) ...[
                Column(
                  children: [
                    Container(
                      width: 2,
                      height: 120,
                      color: Colors.white, // Line below "MY SKILLS"
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        padding: const EdgeInsets.all(8.0), // Optional: add padding inside the border
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2), // Gray border
                          borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                        ),
                        child: const Text(
                          "MY SKILLS",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              // Skills column (right side)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth > 1200 ? 275.0 : 0.0), // Adjust spacing for better alignment
                  child: Wrap(
                    spacing: 20, // Horizontal spacing between the columns
                    runSpacing: 20, // Vertical spacing between the rows
                    alignment: WrapAlignment.start,
                    children: [
                      // Left Column with 4 Skill Items
                      SizedBox(
                        width: screenWidth > 1200 ? 500 : double.infinity, // Adjust width for smaller screens
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillItem(title: 'React', level: 0.9),
                            SkillItem(title: 'Next.js', level: 0.75),
                            SkillItem(title: 'Node.js', level: 0.8),
                            SkillItem(title: 'TypeScript', level: 0.85),
                          ],
                        ),
                      ),

                      // Right Column with 3 Skill Items
                      SizedBox(
                        width: screenWidth > 1200 ? 500 : double.infinity, // Adjust width for smaller screens
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillItem(title: 'GraphQL', level: 0.7),
                            SkillItem(title: 'Flutter', level: 0.8),
                            SkillItem(title: 'Docker', level: 0.65),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.green,  // You can change the color as needed
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    "${(level * 100).toInt()}%",  // Display percentage
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
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
