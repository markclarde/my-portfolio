import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Set a maximum width for the section (e.g., 0.8 times the screen width)
    final maxWidth = screenWidth * 0.7;

    // Determine if the layout should be single-column or multi-column
    final isMobileLayout = screenWidth < 1000;

    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth), // Set maximum width
      padding: const EdgeInsets.all(40),
      color: const Color(0xFF0C1B2A), // Background color for the contact section
      child: isMobileLayout
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // First Column Content
                _buildFirstColumn(isMobileLayout: isMobileLayout),
                const SizedBox(height: 75), // Spacing between text and second column
                // Second Column Content
                _buildSecondColumn(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align children to the start
              children: [
                // First Column
                Expanded(
                  flex: 2,
                  child: _buildFirstColumn(isMobileLayout: isMobileLayout),
                ),
                
                const SizedBox(width: 20), // Space between first and second columns
                
                // Second Column
                Expanded(
                  flex: 1,
                  child: _buildSecondColumn(),
                ),
                
                // ContactInfo widget on the right (hide in mobile layout)
                if (!isMobileLayout) ...[
                  const SizedBox(width: 300),
                  const ContactInfo(), // Place the ContactInfo widget here
                ],
              ],
            ),
    );
  }

  Widget _buildFirstColumn({required bool isMobileLayout}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Wrap the Text in a Container with a maximum width
        Container(
          constraints: const BoxConstraints(maxWidth: 500), // Set a maximum width for text
          child: const Text(
            "I am interested in working with any company that thinks my skill will be helpful for them. If you are looking for someone like me, please let me know. Or you can just 'say hi' to me.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 20), // Spacing between text and button
        // Center the button only for mobile layout
        if (isMobileLayout)
          Center(
            child: _buildContactButton(),
          )
        else
        _buildContactButton(),
      ],
    );
  }

  Widget _buildContactButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 24, // Adjust button size
        ),
      ),
      child: const Text(
        'Contact Me',
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(185, 255, 255, 255),
        ),
      ),
    );
  }

  static Widget _buildSecondColumn() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900)),
        Text("example@example.com", style: TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(height: 10),
        Text("Skype", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900)),
        Text("example.skype", style: TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(height: 10),
        Text("Social", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900)),
        Text("@example", style: TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(height: 10),
        Text("Address", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900)),
        Text("1234 Example St, City, Country", style: TextStyle(fontSize: 20, color: Colors.white)),
        // Add more contact details as needed
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 5, // Adjust this value for the desired rotation
          child: Container(
            padding: const EdgeInsets.all(8.0), // Optional padding inside the border
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // Gray border
              borderRadius: const BorderRadius.all(Radius.circular(3.0)), // Rounded corners
            ),
            child: const Text(
              "CONTACT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: 2,
          height: 100,
          color: Colors.white,
        ),
      ],
    );
  }
}
