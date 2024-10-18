import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final ScrollController scrollController;
  final VoidCallback onScrollToTop;

  const FooterSection({
    Key? key,
    required this.scrollController,
    required this.onScrollToTop, // Accept callback as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
      color: const Color.fromRGBO(29, 41, 58, 100), // Dark background color similar to the image
      child: screenWidth > 1000
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Left side - Thanks buttons in different languages
                _buildLanguageButtonRow(),
                
                // Right side - Star, Fork, "BY ME" and Scroll to Top button
                _buildRightSideButtons(),
              ],
            )
          : Column(
              children: [
                // Left side - Thanks buttons in different languages
                _buildLanguageButtonRow(),
                
                const SizedBox(height: 20), // Spacing between sections
                
                // Right side - Star, Fork, "BY ME" and Scroll to Top button
                _buildRightSideButtons(),
              ],
            ),
    );
  }

  // Helper method to build the row of language buttons
  Widget _buildLanguageButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLanguageButton('ধন্যবাদ'),
        const SizedBox(width: 8),
        _buildLanguageButton('THANKS'),
        const SizedBox(width: 8),
        _buildLanguageButton('شكراً'),
        const SizedBox(width: 8),
        _buildLanguageButton('धन्यवाद'),
        const SizedBox(width: 8),
        _buildLanguageButton('ਪੈਂਕਜ'),
      ],
    );
  }

  // Helper method to build the right side buttons
  Widget _buildRightSideButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            Icon(Icons.star, color: Colors.white70, size: 16),
            SizedBox(width: 5),
            Text("STAR", style: TextStyle(color: Colors.white70)),
          ],
        ),
        const SizedBox(width: 20),
        const Row(
          children: [
            Icon(Icons.fork_right, color: Colors.white70, size: 16),
            SizedBox(width: 5),
            Text("FORK", style: TextStyle(color: Colors.white70)),
          ],
        ),
        const SizedBox(width: 20),
        const Text(
          "BY ME",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // Bold text for "BY ME"
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00C853), // Green button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: () {
            onScrollToTop();
            scrollController.animateTo(
              0, // Scroll to the top of the page
              duration: const Duration(milliseconds: 600), // Smooth scroll duration
              curve: Curves.easeInOut,
            );
          },
          child: const Icon(Icons.arrow_upward, color: Colors.white),
        ),
      ],
    );
  }

  // Helper method to build each language button
  Widget _buildLanguageButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF112233), // Slightly lighter than the background
        borderRadius: BorderRadius.circular(4),
        border: const Border(
          bottom: BorderSide(
            color: Color(0xFF00E676), // Green underline color
            width: 5, // Thickness of the underline
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900),
      ),
    );
  }
}
