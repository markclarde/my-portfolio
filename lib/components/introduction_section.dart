import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Aligns the whole section to the center
            children: [
              SizedBox(
                width: 1200, // Set specific width for IntroductionSection
                height: 550,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Introduction text and buttons on the left
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Wrap the Text widget with Container and set a max width
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 500, // Set the maximum width of the text container
                            ),
                            child: const Text(
                              "Hello! I'm Mark Clarde, a passionate software engineer. I develop web applications, mobile applications, and desktop applications. My core skill is based on JavaScript and I love to do most of the things using JavaScript. I love to make the web more open to the world. I have graduated with a bachelor's degree in Computer Science Engineering from Chandigarh University at Punjab, India in 2020. I am available for any kind of job opportunity that suits my interests.",
                              style: TextStyle(color: Colors.white70, fontSize: 20),
                            ),
                          ),
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
                              // "My Skills" Button
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
                                  'My Skills',
                                  style: TextStyle(
                                    color: Color.fromARGB(185, 255, 255, 255),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                    // This SizedBox can be removed or adjusted
                    const SizedBox(width: 5), // Space between text and image
                  ],
                ),
              ),
            ],
          ),
          // Positioned CircleAvatar for better control
          const Positioned(
            left: 950, // Adjust this value to position the image horizontally
            child: CircleAvatar(
              radius: 180,
              backgroundImage: NetworkImage(
                "https://scontent.fdvo5-1.fna.fbcdn.net/v/t39.30808-6/327170723_1215938732681445_7746818936963562833_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=XCkgGVkokn8Q7kNvgH3lp7j&_nc_ht=scontent.fdvo5-1.fna&_nc_gid=A_o5n0TG6VXArJaGVDL5wUR&oh=00_AYDSazWTaUw_xU6TfyEMDKtf5zfxnQwy3nkLo2X6GtD9Kw&oe=670BD2EA",
              ),
            ),
          ),
          // Positioned AboutMe component
          const Positioned(
            right: 100, // Adjust this value to control horizontal positioning
            top: 25,   // Adjust this value to control vertical positioning
            child: AboutMe(),
          ),
        ],
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RotatedBox(
          quarterTurns: 5, // Rotate the text 90 degrees (counterclockwise)
          child: Text(
            "ABOUT ME",
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 2, // Line width
          height: 80, // Line height
          color: Colors.white,
           // Color of the line
        ),
      ],
    );
  }
}
