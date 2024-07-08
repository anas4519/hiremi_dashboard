import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verification_screens/verifiaction_screen2.dart';
import 'package:hiremi_dashboard/screens/verified_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class VerificationScreen3 extends StatefulWidget {
  const VerificationScreen3({super.key});

  @override
  State<VerificationScreen3> createState() => _VerificationScreen3State();
}

class _VerificationScreen3State extends State<VerificationScreen3> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _domainController = TextEditingController();

  bool _isAllFieldsValid() {
    return _idController.text.isNotEmpty &&
        _domainController.text.isNotEmpty;
  }

  @override
  void dispose() {
    _idController.dispose();
    _domainController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Review & Verify Your Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      radius: screenHeight * 0.05,
                      lineWidth: 6,
                      percent: 0.95,
                      center: const Text(
                        '95%',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      progressColor: Colors.green,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(height: screenHeight * 0.0075),
                    const Text(
                      'Harsh Pawar',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: screenHeight * 0.0075),
                    Container(
                      width: screenWidth * 0.2,
                      height: screenHeight * 0.035,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenHeight * 0.035 / 2),
                        border: Border.all(
                          color: const Color(0xFFC1272D),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenHeight * 0.005),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: const Color(0xFFC1272D),
                              size: screenHeight * 0.01,
                            ),
                            Text(
                              'Not verified',
                              style: TextStyle(
                                color: const Color(0xFFC1272D),
                                fontSize: screenHeight * 0.01,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: 1,
                width: screenWidth,
                color: Colors.grey,
              ),
              SizedBox(height: screenHeight * 0.04),
              const Text(
                'Last Step Verification',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Enrollment Number / Roll Number / College ID / UAN Number etc.',
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green),
                    ),
                    child: TextField(
                      controller: _idController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Interest Domain',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green),
                    ),
                    child: TextField(
                      controller: _domainController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFC1272D)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Replace with your error handling logic here
                          },
                          child: Text(
                            '< Edit Previous',
                            style: TextStyle(
                              fontSize: screenHeight * 0.012,
                              color: const Color(0xFFC1272D),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFC1272D),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (_isAllFieldsValid()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const VerifiedPage()));
                            } else {
                              print('Please fill in all required fields.');
                              // Replace with your error handling logic here
                            }
                          },
                          child: Text(
                            'Review & Verify >',
                            style: TextStyle(
                              fontSize: screenHeight * 0.012,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
