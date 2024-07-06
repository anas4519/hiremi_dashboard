import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verify.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class VerificationStatus extends StatelessWidget {
  const VerificationStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 202.82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 121.82,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: CircularPercentIndicator(
                                radius: 40,
                                lineWidth: 6,
                                percent: 0.25,
                                center: const Text(
                                  '25%',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                progressColor: Colors.green,
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'Complete & Verify Your Profile.',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: const Icon(
                                                Icons.check,
                                                color: Colors.white,
                                                size: 12.11,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Profile\nCreated',
                                              style: TextStyle(
                                                  fontSize: 4.54,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width:
                                                  22, // Length of the horizontal line
                                              height:
                                                  2, // Thickness of the line
                                              color: Colors
                                                  .green, // Color of the line
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width:
                                                  22, // Length of the horizontal line
                                              height:
                                                  2, // Thickness of the line
                                              color: Colors
                                                  .white, // Color of the line
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: const Icon(
                                                Icons.call,
                                                color: Color(0xFFC1272D),
                                                size: 12.11,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Profile\nCreated',
                                              style: TextStyle(
                                                  fontSize: 4.54,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width:
                                                  46, // Length of the horizontal line
                                              height:
                                                  2, // Thickness of the line
                                              color: Colors
                                                  .white, // Color of the line
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: const Icon(
                                                Icons.school,
                                                color: Color(0xFFC1272D),
                                                size: 12.11,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Profile\nCreated',
                                              style: TextStyle(
                                                  fontSize: 4.54,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width:
                                                  46, // Length of the horizontal line
                                              height:
                                                  2, // Thickness of the line
                                              color: Colors
                                                  .white, // Color of the line
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: const Icon(
                                                Icons.account_balance,
                                                color: Color(0xFFC1272D),
                                                size: 12.11,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Profile\nCreated',
                                              style: TextStyle(
                                                  fontSize: 4.54,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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
                                        color: const Color(0xFFC1272D),
                                      )),
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: Color(0xFFC1272D),
                                          size: 10,
                                        ),
                                        Text(
                                          'Not verified',
                                          style: TextStyle(
                                              color: Color(0xFFC1272D),
                                              fontSize: 10),
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
                                  color: Color(0xFFC1272D),
                                ),
                                Text(
                                  'App ID: ',
                                  style: TextStyle(color: Color(0xFFC1272D)),
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> VerificationScreen()));
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
              );
  }
}