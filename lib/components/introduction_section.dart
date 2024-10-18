import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Check if the screen width is less than 600 (mobile breakpoint)
    final isMobile = screenWidth < 1000;

    return SizedBox(
      height: screenHeight,
      width: screenWidth *0.9,
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 125,
                  backgroundImage: AssetImage("assets/images/mark_clarde_2.jpg"),
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello! I'm Mark Clarde, a passionate software engineer. I develop web applications, mobile applications, and desktop applications. My core skill is based on JavaScript and I love to do most of the things using JavaScript. I love to make the web more open to the world. I have graduated with a bachelor's degree in Computer Science Engineering from Chandigarh University at Punjab, India in 2020. I am available for any kind of job opportunity that suits my interests.",
                        style: TextStyle(color: Colors.white70, fontSize: 20), textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 24, horizontal: 24),
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
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.green, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 24, horizontal: 24),
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
                      )
                    ],
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello! I'm Mark Clarde, a passionate software engineer. I develop web applications, mobile applications, and desktop applications. My core skill is based on JavaScript and I love to do most of the things using JavaScript. I love to make the web more open to the world. I have graduated with a bachelor's degree in Computer Science Engineering from Chandigarh University at Punjab, India in 2020. I am available for any kind of job opportunity that suits my interests.",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 24, horizontal: 24),
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
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.green, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 24, horizontal: 24),
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
                      )
                    ],
                  ),
                ),
                const CircleAvatar(
                  radius: 175,
                  backgroundImage: AssetImage("assets/images/mark_clarde_2.jpg"),
                ),
                const AboutMe(), // Keep AboutMe for larger screens
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
        RotatedBox(
          quarterTurns: 5, // You can adjust this value for the desired rotation
          child: Container(
            padding: const EdgeInsets.all(8.0), // Optional padding inside the border
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // Gray border
              borderRadius: const BorderRadius.all(Radius.circular(3.0)), // Rounded corners
            ),
            child: const Text(
              "ABOUT ME",
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
