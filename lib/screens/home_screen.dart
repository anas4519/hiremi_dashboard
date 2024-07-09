import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/experienced_jobs.dart';
import 'package:hiremi_dashboard/screens/fresher_jobs.dart';
import 'package:hiremi_dashboard/screens/internships.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';
import 'package:hiremi_dashboard/widgets/banners.dart';
import 'package:hiremi_dashboard/widgets/circle_row.dart';
import 'package:hiremi_dashboard/widgets/drawer_child.dart';
import 'package:hiremi_dashboard/widgets/oppurtunity_card.dart';
import 'package:hiremi_dashboard/widgets/user_info.dart';
import 'package:hiremi_dashboard/widgets/verification_status.dart';

class HomeScreen extends StatefulWidget {
  final bool isVerified;

  const HomeScreen({super.key, required this.isVerified});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(backgroundColor: Colors.white,child: DrawerChild(),),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Hiremi's Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const NotificationScreen(),
              ));
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!widget.isVerified) const VerificationStatus(),
              if (widget.isVerified) const UserInfo(),
              SizedBox(height: screenHeight * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore hiremi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  AdBanner(isVerified: widget.isVerified),
                  SizedBox(height: screenHeight * 0.02),
                  const CircleRow(),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                "Hiremi's Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6E01), Color(0xFFFEBC0D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => InternshipsScreen(isVerified: widget.isVerified),
                        ));
                      },
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.05,
                            height: screenWidth * 0.05,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.spa,
                              size: screenWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.015),
                          Text(
                            'Internships',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFC3E41), Color(0xFFFF6E01)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> FresherJobs(isVerified: widget.isVerified,)));
                      },
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.05,
                            height: screenWidth * 0.05,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.work,
                              size: screenWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.015),
                          Text(
                            'Fresher Jobs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFCB44BD), Color(0xFFDB6AA0)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const Experienced_Jobs()));
                      },
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.05,
                            height: screenWidth * 0.05,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.work,
                              size: screenWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.015),
                          Text(
                            'Experienced Jobs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'Latest Opportunities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: screenHeight * 0.02),
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
                isVerified: widget.isVerified,
              ),
              SizedBox(height: screenHeight * 0.01),
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
                isVerified: widget.isVerified,
              ),
              SizedBox(height: screenHeight * 0.01),
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
                isVerified: widget.isVerified,
              ),
              const SizedBox(height: 64,)
            ],
          ),
        ),
      ),
    );
  }
}
