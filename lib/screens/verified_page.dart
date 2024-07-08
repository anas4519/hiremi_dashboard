import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/home_screen.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';
import 'package:hiremi_dashboard/widgets/new_navBar.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hiremi's Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const NotificationScreen()));
            },
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/new_releases.png',
                  width: screenWidth * 0.05,
                  height: screenWidth * 0.05,
                ),
                Text(
                  ' Payment Successful & Successfully Verified',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize:
                        screenWidth * 0.037, // Adjusted for responsiveness
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenHeight * 0.45,
                  child: Image.asset(
                    'assets/confetti bg.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.06,
                  child: Image.asset(
                    'assets/Product quality-pana.png',
                    width: screenWidth * 0.8,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/new_releases.png',
                      width: screenWidth * 0.05,
                      height: screenWidth * 0.05,
                    ),
                    Text(
                      ' Verified users can access jobs & internships at Hiremi.',
                      style: TextStyle(fontSize: screenWidth * 0.025),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('  '), // Placeholder for space
                    Image.asset(
                      'assets/new_releases.png',
                      width: screenWidth * 0.05,
                      height: screenWidth * 0.05,
                    ),
                    Text(
                      ' Verified users also get personalized career guidance.',
                      style: TextStyle(fontSize: screenWidth * 0.025),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => NewNavbar(isV: true,)),
                      (Route<dynamic> route) => false,
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Continue Exploration >',
                    style: TextStyle(fontSize: screenWidth * 0.025),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
