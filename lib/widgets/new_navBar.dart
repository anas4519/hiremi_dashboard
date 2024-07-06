import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/applies_screen.dart';
import 'package:hiremi_dashboard/screens/home_screen.dart';
import 'package:hiremi_dashboard/screens/queries_screen.dart';
import 'package:hiremi_dashboard/screens/profile_screen.dart';
// import 'package:hiremi_dashboard/screens/verification_screen.dart';

class NewNavbar extends StatefulWidget {
  const NewNavbar({super.key});

  @override
  State<NewNavbar> createState() => _NewNavbarState();
}

class _NewNavbarState extends State<NewNavbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const HomeScreen(isVerified: true,),
    const AppliesScreen(),
    const QueriesScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _pages.map((page) => Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (context) => page,
                );
              },
            )).toList(),
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 20,  // Margin from the bottom
            left: 20,    // Margin from the left
            right: 20,   // Margin from the right
            child: Container(
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
                        child: Icon(Icons.home_filled, size: 20, color: _selectedIndex == 0 ? const Color(0xFFC1272D) : Colors.black),
                      ),
                      label: 'HOME',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
                        child: Icon(Icons.file_copy, size: 20, color: _selectedIndex == 1 ? const Color(0xFFC1272D) : Colors.black),
                      ),
                      label: 'APPLIES',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
                        child: Icon(Icons.chat, size: 20, color: _selectedIndex == 2 ? const Color(0xFFC1272D) : Colors.black),
                      ),
                      label: 'QUERIES',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
                        child: Icon(Icons.person, size: 20, color: _selectedIndex == 3 ? const Color(0xFFC1272D) : Colors.black),
                      ),
                      label: 'PROFILE',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: const Color(0xFFC1272D),
                  unselectedItemColor: Colors.black,
                  onTap: _onItemTapped,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle: const TextStyle(fontSize: 8, color: Colors.black),
                  unselectedLabelStyle: const TextStyle(fontSize: 8, color: Colors.black),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,  // Adjust this value as needed
            left: 0,
            right: 0,
            child: Transform.translate(
              offset: const Offset(0, -20),  // Move FloatingActionButton upwards
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
                          SizedBox(height: 10,),
                          Icon(Icons.all_inclusive, color: Color(0xFFC1272D), size: 30,),
                          Text('HIREMI' ,style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),),
                          Text('360', style: TextStyle(fontSize: 6, color: Color(0xFFC1272D)),)
                          
                        ],
                      ),
                    )
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
