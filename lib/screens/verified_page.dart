import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/new_releases.png'),
                const Text(
                  ' Payment Successful & Successfully Verified',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14.88,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 400,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/confetti bg.png',
                        ),
                      ],
                    )),
                Positioned(
                    top: 25,
                    bottom: 5,
                    child: Image.asset(
                      'assets/Product quality-pana.png',
                    ))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/new_releases.png'),
                    const Text(
                      ' Verified users can access job & internship at Hiremi.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('  '),
                    Image.asset('assets/new_releases.png'),
                    const Text(
                      ' Verified users also get personalized career guidance.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 48,),
                ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
                child: const Text(
                  'Continue Exploration >',
                  style: TextStyle(fontSize: 10),
                ),
              )

              ],
            )
          ],
        ),
      ),
    );
  }
}
