import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 165.0), // Adjust the value as needed
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if the screen is wide enough for a row layout
          final isWideScreen = constraints.maxWidth > 600;

          return SizedBox(
            width: isWideScreen ? 1700 : constraints.maxWidth, // Adjust width based on screen size
            child: isWideScreen
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Center the row
                    children: [
                      // Vertical social media section, only on wide screens
                      const SocialMediaLinks(),

                      // Spacer between social links and Hero section
                      const SizedBox(width: 300),

                      // Hero section
                      _buildHeroContent(),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center for mobile layout
                    children: [
                      // Hero section
                      _buildHeroContent(),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget _buildHeroContent() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: SizedBox(
        width: 600, // Set specific width for inner content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello! I am',
                style: TextStyle(color: Colors.green, fontSize: 28)),
            const SizedBox(height: 1),
            const Text('Mark Clarde',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 75,
                    fontWeight: FontWeight.w900)),
            const SizedBox(height: 1),
            const Text('Back-end Developer',
                style: TextStyle(
                  color: Color.fromARGB(255, 102, 196, 105),
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // "Get Resume" Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 24), // Adjust button size
                  ),
                  child: const Text(
                    'Get Resume',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(185, 255, 255, 255),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // "About Me" Button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.green, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 24), // Adjust button size
                  ),
                  child: const Text(
                    'About Me',
                    style: TextStyle(
                      color: Color.fromARGB(185, 255, 255, 255),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.code), // Replace with GitHub icon
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cable), // Replace with other icons
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.business), // LinkedIn
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.article), // Medium icon
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share), // Twitter icon
          color: Colors.white,
        ),
        const SizedBox(height: 20),
        const RotatedBox(
          quarterTurns: 3,
          child: Text(
            "FOLLOW ME",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 2,
          height: 80,
          color: Colors.white, // Line below "FOLLOW ME"
        ),
      ],
    );
  }
}
