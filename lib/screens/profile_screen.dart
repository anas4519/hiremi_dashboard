import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final percent = 0.25;
    final per = percent * 100;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 40,
                    lineWidth: 6,
                    percent: percent,
                    center: Text('$per%'),
                    progressColor: Colors.green,
                    
                    backgroundColor: Colors.transparent,
                  ),
                  const Text(
                    'Harsh Pawar',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6,),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xFFC1272D),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_sharp,
                            color:  Color(0xFFC1272D),
                            size: 10,
                          ),
                          Text(
                            'Not verified',
                            style: TextStyle(color:  Color(0xFFC1272D), fontSize: 10),
                          )

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6,),
                  const Text(
                    'Last updated today',
                    style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                  ),
                  const SizedBox(height: 6,),
                  ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
                child: const Text(
                  'Edit Profile >',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              const SizedBox(height: 40,)
                ],
              ),
              
            ),
            
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBEEEE),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Color(0xFFC1272D),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Text('Settings', style: TextStyle(fontSize: 16),),
                    const Spacer(),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECF5FF),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: TextButton(onPressed: (){}, child: const Text('>', style: TextStyle(fontSize: 10.11, fontWeight: FontWeight.bold),))
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                 Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBEEEE),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(
                        Icons.lock_open_rounded,
                        color: Color(0xFFC1272D),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Text('Change Password', style: TextStyle(fontSize: 16),),
                    const Spacer(),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECF5FF),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: TextButton(onPressed: (){}, child: const Text('>', style: TextStyle(fontSize: 10.11, fontWeight: FontWeight.bold),))
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                 Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBEEEE),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(
                        Icons.info,
                        color: Color(0xFFC1272D),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Text('About App', style: TextStyle(fontSize: 16),),
                    const Spacer(),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECF5FF),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: TextButton(onPressed: (){}, child: const Text('>', style: TextStyle(fontSize: 10.11, fontWeight: FontWeight.bold),))
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                 Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBEEEE),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(
                        Icons.support_agent_rounded,
                        color: Color(0xFFC1272D),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Text('Help and Support', style: TextStyle(fontSize: 16),),
                    const Spacer(),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECF5FF),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: TextButton(onPressed: (){}, child: const Text('>', style: TextStyle(fontSize: 10.11, fontWeight: FontWeight.bold),))
                    ),
                  ],
                ),
                const SizedBox(height: 16,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
