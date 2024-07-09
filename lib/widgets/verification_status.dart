import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verify.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class VerificationStatus extends StatelessWidget {
  const VerificationStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.23, // Updated height based on screen height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            screenWidth * 0.03), // Adjusted based on screen width
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.95,
              height:
                  screenHeight * 0.14, // Updated height based on screen height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    screenWidth * 0.02), // Adjusted based on screen width
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1659DC),
                    Color(0xFF6EA6FA),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.04), // Adjusted based on screen width
                child: Row(
                  children: [
                    Container(
                      height: screenHeight *
                          0.1, // Updated height based on screen height
                      width: screenHeight *
                          0.1, // Updated width based on screen height
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenHeight *
                            0.05), // Adjusted based on screen height
                      ),
                      child: CircularPercentIndicator(
                        radius: screenHeight *
                            0.05, // Adjusted based on screen height
                        lineWidth: screenHeight *
                            0.0075, // Adjusted based on screen height
                        percent: 0.25,
                        center: Text(
                          '25%',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight *
                                0.02, // Adjusted based on screen height
                          ),
                        ),
                        progressColor: Colors.green,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(
                      width:
                          screenWidth * 0.03, // Adjusted based on screen width
                    ),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the start
                      children: [
                        Text(
                          'Complete & Verify Your Profile.',
                          style: TextStyle(
                            fontSize: screenWidth *
                                0.035, // Adjusted based on screen width
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight *
                              0.02, // Adjusted based on screen height
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  height: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(
                                        screenWidth *
                                            0.035), // Adjusted based on screen width
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: screenWidth *
                                        0.03, // Adjusted based on screen width
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.005, // Adjusted based on screen height
                                ),
                                Text(
                                  'Profile\nCreated',
                                  style: TextStyle(
                                    fontSize: screenWidth *
                                        0.01, // Adjusted based on screen width
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.05, // Adjusted based on screen width
                                  height: screenHeight *
                                      0.003, // Adjusted based on screen height
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.02, // Adjusted based on screen height
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.05, // Adjusted based on screen width
                                  height: screenHeight *
                                      0.003, // Adjusted based on screen height
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.02, // Adjusted based on screen height
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  height: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        screenWidth *
                                            0.035), // Adjusted based on screen width
                                  ),
                                  child: Icon(
                                    Icons.call,
                                    color: const Color(0xFFC1272D),
                                    size: screenWidth *
                                        0.03, // Adjusted based on screen width
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.005, // Adjusted based on screen height
                                ),
                                Text(
                                  'Profile\nCreated',
                                  style: TextStyle(
                                    fontSize: screenWidth *
                                        0.01, // Adjusted based on screen width
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.1, // Adjusted based on screen width
                                  height: screenHeight *
                                      0.003, // Adjusted based on screen height
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.02, // Adjusted based on screen height
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  height: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        screenWidth *
                                            0.035), // Adjusted based on screen width
                                  ),
                                  child: Icon(
                                    Icons.school,
                                    color: const Color(0xFFC1272D),
                                    size: screenWidth *
                                        0.03, // Adjusted based on screen width
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.005, // Adjusted based on screen height
                                ),
                                Text(
                                  'Profile\nCreated',
                                  style: TextStyle(
                                    fontSize: screenWidth *
                                        0.01, // Adjusted based on screen width
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.1, // Adjusted based on screen width
                                  height: screenHeight *
                                      0.003, // Adjusted based on screen height
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.02, // Adjusted based on screen height
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  height: screenWidth *
                                      0.07, // Adjusted based on screen width
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        screenWidth *
                                            0.035), // Adjusted based on screen width
                                  ),
                                  child: Icon(
                                    Icons.account_balance,
                                    color: const Color(0xFFC1272D),
                                    size: screenWidth *
                                        0.03, // Adjusted based on screen width
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight *
                                      0.005, // Adjusted based on screen height
                                ),
                                Text(
                                  'Profile\nCreated',
                                  style: TextStyle(
                                    fontSize: screenWidth *
                                        0.01, // Adjusted based on screen width
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02, // Adjusted based on screen height
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.04), // Adjusted based on screen width
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Row(
                      children: [
                        Text(
                          'Harsh Pawar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth *
                                0.04, // Adjusted based on screen width
                          ),
                        ),
                        SizedBox(
                          width: screenWidth *
                              0.02, // Adjusted based on screen width
                        ),
                        Container(
                          // height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.1),
                            border: Border.all(color: const Color(0xFFC1272D)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: const Color(0xFFC1272D),
                                  size: screenWidth * 0.02,
                                ),
                                Text(
                                  ' Not verified',
                                  style: TextStyle(
                                    color: const Color(0xFFC1272D),
                                    fontSize: screenWidth *
                                        0.02, // Adjusted based on screen width
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.fingerprint,
                          color: const Color(0xFFC1272D),
                          size: screenWidth *
                              0.02, // Adjusted based on screen width
                        ),
                        Text(
                          'App ID: ',
                          style: TextStyle(
                            color: const Color(0xFFC1272D),
                            fontSize: screenWidth *
                                0.02, // Adjusted based on screen width
                          ),
                        ),
                        Text(
                          '-- -- -- --',
                          style: TextStyle(
                            fontSize: screenWidth *
                                0.02, // Adjusted based on screen width
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right:
                        screenWidth * 0.04), // Adjusted based on screen width
                child: Center(
                  child: Container(
                    height: screenHeight * 0.035,
                    // Adjusted based on screen height

                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.02), // Adjusted based on screen width
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (ctx) => const VerificationScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/new_releases (1).png',
                            height: MediaQuery.of(context).size.width * 0.025,
                            width: MediaQuery.of(context).size.width * 0.025,
                          ),
                          SizedBox(
                            width: screenWidth *
                                0.01, // Adjusted based on screen width
                          ),
                          Text(
                            'Verify Now >',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth *
                                  0.02, // Adjusted based on screen width
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
