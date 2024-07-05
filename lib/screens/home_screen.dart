import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/applies_screen.dart';
import 'package:hiremi_dashboard/screens/profile_screen.dart';
import 'package:hiremi_dashboard/screens/queries_screen.dart';
import 'package:hiremi_dashboard/widgets/banners.dart';
import 'package:hiremi_dashboard/widgets/circle_row.dart';
import 'package:hiremi_dashboard/widgets/oppurtunity_card.dart';
import 'package:hiremi_dashboard/widgets/verification_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const AppliesScreen(),
    const QueriesScreen(),
    const ProfileScreen(),
  ];
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerificationStatus(),
              const SizedBox(
                height: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore hiremi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  AdBanner(),
                  SizedBox(
                    height: 16,
                  ),
                  CircleRow()
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              //featured
              const Text(
                "Hiremi's Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6E01), Color(0xFFFEBC0D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Add rounded corners if needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            width: 20.8,
                            height: 20.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.spa,
                              size: 8.9,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Internships',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFC3E41), Color(0xFFFF6E01)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Add rounded corners if needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            width: 20.8,
                            height: 20.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.work,
                              size: 8.9,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Fresher Jobs',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFCB44BD),
                          Color(0xFFDB6AA0),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Add rounded corners if needed
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            width: 20.8,
                            height: 20.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.work,
                              size: 8.9,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Experienced Jobs',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Latest Oppurtunities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              OpportunityCard(
                dp: Image.asset('assets/Rectangle 57.png'),
                role: 'Human Resource Intern',
                company: 'Hiremi',
                location: 'Bhopal, Madhya Prades, India',
                stipend: '2,000-15,000',
                mode: 'Remote',
                type: 'Internship',
                exp: 1,
                daysPosted: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
