import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/experienced_jobs.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Future<void> _launchURL(String url) async {
  //   final Uri uri = Uri.parse(url);
  //   if (!await _launchUrl(uri)) {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/appbar_icons/Group 213.png'),
          ),
        ),
        title: const Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/icons/appbar_icons/Group 156.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Image(
              image: AssetImage('assets/images/Subscriber-bro.png'),
              height: 280.0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(image: AssetImage('assets/images/main (1).png')),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Elevate Your Career, Empower',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.grey.shade700),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Business',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.grey.shade700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Hiremi is a platform for career and business growth, offering',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.5,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Text(
            'efficient recruitment solutions and development resources for ',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Text(
            'job seekers and recent graduates.',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'With services in project management, recruitment outsourcing',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Text(
            'payroll, mentorship, and corporate training.',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              // _launchURL('http://www.hiremi.in/About%20Us%20page/about.html');
            },
            child: const Text(
              'Learn more',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationThickness: 2.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipPath(
          clipper: const ShapeBorderClipper(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
          ),
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    onPressed: () {
                      _onItemTapped(0);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ExperienceJobs();
                        },
                      ));
                    },
                    icon: ImageIcon(
                      const AssetImage('assets/icons/nav_icons/Group 142.png'),
                      size: 50.0,
                      color: _selectedIndex == 0 ? Colors.red : Colors.black,
                    ),
                    padding: EdgeInsets.zero,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                ),
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    onPressed: () {
                      _onItemTapped(1);
                    },
                    icon: ImageIcon(
                      const AssetImage('assets/icons/nav_icons/Group 143.png'),
                      size: 60.0,
                      color: _selectedIndex == 1 ? Colors.red : Colors.black,
                    ),
                    padding: EdgeInsets.zero,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                ),
                const Spacer(),
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    onPressed: () {
                      _onItemTapped(2);
                    },
                    icon: ImageIcon(
                      const AssetImage('assets/icons/nav_icons/Group 144.png'),
                      size: 50.0,
                      color: _selectedIndex == 2 ? Colors.red : Colors.black,
                    ),
                    padding: EdgeInsets.zero,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                ),
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    onPressed: () {
                      _onItemTapped(3);
                    },
                    icon: ImageIcon(
                      const AssetImage('assets/icons/nav_icons/Group 145.png'),
                      size: 50.0,
                      color: _selectedIndex == 3 ? Colors.red : Colors.black,
                    ),
                    padding: EdgeInsets.zero,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 70,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/Group 138.png',
            ),
            Material(
              color: Colors.transparent,
              child: ClipOval(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const About_Us();
                      },
                    ));
                  },
                  child: Image.asset(
                    'assets/images/Group 141.png',
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}