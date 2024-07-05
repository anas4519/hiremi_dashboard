import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/widgets/drawer_child.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notfications',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Mail-bro 1.png'),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'NNN: No New Notifications!, Please Explore\nHiremi applications for a while.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              
            )
          ],
        ),
      ),
    );
  }
}
