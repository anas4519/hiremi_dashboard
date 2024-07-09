import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/ProfileScreen.dart';
import 'package:hiremi_dashboard/screens/applies_screen.dart';
import 'package:hiremi_dashboard/screens/home_screen.dart';
import 'package:hiremi_dashboard/screens/queries_screen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class NewNavbar extends StatefulWidget {
  final bool isV;
  const NewNavbar({super.key, required this.isV});

  @override
  State<NewNavbar> createState() => _NewNavbarState();
}

class _NewNavbarState extends State<NewNavbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  late List<Widget> _pages;
  @override
  void initState() {
    super.initState();
    _pages = [
      HomeScreen(isVerified: widget.isV),
      const AppliesScreen(),
      const QueriesScreen(),
      const ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double spacing = (screenWidth - (4 * 50)) / 5;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _pages
                .map((page) => Navigator(
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) => page,
                        );
                      },
                    ))
                .toList(),
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: Container(
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    _buildNavItem(Icons.home_filled, 'HOME', 0),
                    SizedBox(
                      width: spacing,
                    ),
                    _buildNavItem(Icons.file_copy, 'APPLIES', 1),
                    SizedBox(
                      width: spacing * 3.2,
                    ),
                    _buildNavItem(Icons.chat, 'QUERIES', 2),
                    SizedBox(
                      width: spacing,
                    ),
                    _buildNavItem(Icons.person, 'PROFILE', 3),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //     bottom:
          //         10,
          //     left: 0,
          //     right: 0,
          //     child: SizedBox(height: 100, width: 5,child: Image.asset('assets/Rectangle 50.png'))
          //     ),
          Positioned(
            bottom: 35,
            left: screenWidth*0.405,
              child: CircularPercentIndicator(
            radius: 39,
            lineWidth: 15,
            percent: 0.50,
            
            progressColor: const Color(0xFFC1272D),
            backgroundColor: Colors.transparent,
            startAngle: 90,
          )),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Transform.translate(
              offset: const Offset(0, -20),
              child: Center(
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Define the action for the FloatingActionButton here
                    },
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.all_inclusive,
                            color: Color(0xFFC1272D),
                            size: 30,
                          ),
                          Text(
                            'HIREMI',
                            style: TextStyle(
                                fontSize: 7, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '360',
                            style: TextStyle(
                                fontSize: 6, color: Color(0xFFC1272D)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: _selectedIndex == index
                ? const Color(0xFFC1272D)
                : Colors.black,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
