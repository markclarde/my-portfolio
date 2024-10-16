import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Check if the screen width is less than 600 (mobile breakpoint)
    final isMobile = screenWidth < 800;

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    "https://scontent.fdvo5-1.fna.fbcdn.net/v/t39.30808-6/327170723_1215938732681445_7746818936963562833_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=XCkgGVkokn8Q7kNvgH3lp7j&_nc_ht=scontent.fdvo5-1.fna&_nc_gid=A_o5n0TG6VXArJaGVDL5wUR&oh=00_AYDSazWTaUw_xU6TfyEMDKtf5zfxnQwy3nkLo2X6GtD9Kw&oe=670BD2EA",
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello! I'm Zonayed Ahmed, a passionate software engineer. I develop web applications, mobile applications, and desktop applications. My core skill is based on JavaScript and I love to do most of the things using JavaScript. I love to make the web more open to the world. I have graduated with a bachelor's degree in Computer Science Engineering from Chandigarh University at Punjab, India in 2020. I am available for any kind of job opportunity that suits my interests.",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
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
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello! I'm Zonayed Ahmed, a passionate software engineer. I develop web applications, mobile applications, and desktop applications. My core skill is based on JavaScript and I love to do most of the things using JavaScript. I love to make the web more open to the world. I have graduated with a bachelor's degree in Computer Science Engineering from Chandigarh University at Punjab, India in 2020. I am available for any kind of job opportunity that suits my interests.",
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
                  radius: 100,
                  backgroundImage: NetworkImage(
                    "https://scontent.fdvo5-1.fna.fbcdn.net/v/t39.30808-6/327170723_1215938732681445_7746818936963562833_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=XCkgGVkokn8Q7kNvgH3lp7j&_nc_ht=scontent.fdvo5-1.fna&_nc_gid=A_o5n0TG6VXArJaGVDL5wUR&oh=00_AYDSazWTaUw_xU6TfyEMDKtf5zfxnQwy3nkLo2X6GtD9Kw&oe=670BD2EA",
                  ),
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
        const RotatedBox(
          quarterTurns: 5,
          child: Text(
            "ABOUT ME",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 2,
          height: 80,
          color: Colors.white,
        ),
      ],
    );
  }
}
