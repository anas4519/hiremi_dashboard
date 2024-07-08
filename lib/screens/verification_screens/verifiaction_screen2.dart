import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verification_screens/verification_screen1.dart';
import 'package:hiremi_dashboard/screens/verification_screens/verification_screen3.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class VerificationScreen2 extends StatefulWidget {
  const VerificationScreen2({super.key});

  @override
  State<VerificationScreen2> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen2> {
  final TextEditingController _collegeNameController = TextEditingController();
  final TextEditingController _collegeStateController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _degreeController = TextEditingController();
  final TextEditingController _passYearController = TextEditingController();

  bool _isAllFieldsValid() {
    return _collegeNameController.text.isNotEmpty &&
        _collegeStateController.text.isNotEmpty &&
        _branchController.text.isNotEmpty &&
        _degreeController.text.isNotEmpty &&
        _passYearController.text.isNotEmpty;
  }

  @override
  void dispose() {
    _collegeNameController.dispose();
    _collegeStateController.dispose();
    _branchController.dispose();
    _degreeController.dispose();
    _passYearController.dispose();
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
                      percent: 0.75,
                      center: const Text(
                        '75%',
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
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'Education Information',
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
                        'College Name',
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
                      controller: _collegeNameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.01),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        "College State",
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
                      controller: _collegeStateController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.01),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Branch',
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
                      controller: _branchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.01),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Degree',
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
                      controller: _degreeController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.01),
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Passout Year',
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
                      controller: _passYearController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.01),
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
                                  builder: (ctx) => const VerificationScreen3()));
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
