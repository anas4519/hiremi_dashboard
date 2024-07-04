import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/widgets/circle_row.dart';
import 'package:hiremi_dashboard/widgets/oppurtunity_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Container(
                width: 398,
                height: 202.82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Image.asset('assets/Frame 203.png'),
                    const SizedBox(
                      height: 16.48,
                    ),
                    Row(
                      children: [
                        //harsh pawar
                        Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 16.78,
                                ),
                                const Text(
                                  'Harsh Pawar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Colors.red,
                                      )),
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: Colors.red,
                                          size: 10,
                                        ),
                                        Text(
                                          'Not verified',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.fingerprint,
                                  color: Colors.red,
                                ),
                                Text(
                                  'App ID: ',
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text('-- -- -- --')
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Center(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(
                                  10), // Adjust the radius as needed
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Add your button click logic here
                              },
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Verify Now >',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore hiremi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 398,
                    height: 123.66,
                    child: Image.asset('assets/Hiremi Banner.png'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CircleRow()
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
               OpportunityCard(dp: Image.asset('assets/Rectangle 57.png'), role: 'Human Resource Intern', company: 'Hiremi', location: 'Bhopal, Madhya Prades, India', stipend: '2,000-15,000', mode: 'Remote', type: 'Internship',exp: 1,)
            ],
          ),
        ),
      ),
    );
  }
}
