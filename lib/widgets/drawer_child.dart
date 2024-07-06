import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DrawerChild extends StatelessWidget {
   const DrawerChild({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                CircularPercentIndicator(
                  radius: 40,
                  lineWidth: 4,
                  percent: 0.25,
                  center: const Text('25%'),
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
                const Text(
                  'Harsh Pawar',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xFFC1272D),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_sharp,
                          color: Color(0xFFC1272D),
                          size: 10,
                        ),
                        Text(
                          'Not verified',
                          style: TextStyle(color: Color(0xFFC1272D), fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Last updated today',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const SizedBox(height: 6),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Edit Profile >',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              height: 1,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              buildDrawerItem(Icons.settings, 'Settings'),
              const SizedBox(height: 16),
              buildDrawerItem(Icons.lock_open_rounded, 'Change Password'),
              const SizedBox(height: 16),
              buildDrawerItem(Icons.info, 'About App'),
              const SizedBox(height: 16),
              buildDrawerItem(Icons.support_agent_rounded, 'Help and Support'),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(IconData icon, String title) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            color: const Color(0xFFFBEEEE),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: const Color(0xFFC1272D),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        const Spacer(),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: const Color(0xFFECF5FF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              '>',
              style: TextStyle(fontSize: 10.11, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
