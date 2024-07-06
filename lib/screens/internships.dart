import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';
import 'package:hiremi_dashboard/widgets/oppurtunity_card.dart';

class InternshipsScreen extends StatelessWidget {
  const InternshipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Internships',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => NotificationScreen()));
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 86,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6E01), Color(0xFFFEBC0D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 32.72,
                        height: 32.72,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.spa,
                          size: 15,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Internships',
                        style: TextStyle(fontSize: 17.55, color: Colors.white),
                      ),
                      const Spacer(),
                      Container(
                        // padding: EdgeInsets.all(8.0),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.spa,
                          color: Colors.orange,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Available Internships (2)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 24,
                ),
                OpportunityCard(
                  dp: Image.asset('assets/Rectangle 57.png'),
                  role: 'Human Resource Intern',
                  company: 'Hiremi',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                ),
                const SizedBox(
                  height: 8,
                ),
                OpportunityCard(
                  dp: Image.asset('assets/crtd1 1.png'),
                  role: 'Social Media Intern',
                  company: 'CRTD Technologies',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Upcoming Internships (1)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 24,
                ),
                OpportunityCard(
                  dp: Image.asset('assets/Rectangle 57.png'),
                  role: 'Data Science Intern',
                  company: 'Hiremi',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
