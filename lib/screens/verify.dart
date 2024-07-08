import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verification_screens/verification_screen1.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

enum Gender { Male, Female, Other }

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Gender? _selectedGender;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _birthPlaceController = TextEditingController();

  bool _isAllFieldsValid() {
    return _fullNameController.text.isNotEmpty &&
        _fatherNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _dobController.text.isNotEmpty &&
        _birthPlaceController.text.isNotEmpty &&
        _selectedGender != null;
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _fatherNameController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    _birthPlaceController.dispose();
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
                      percent: 0.25,
                      center: const Text(
                        '25%',
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
                'Personal Information',
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
                        'Full name',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
                      controller: _fullNameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        "Father's Full name",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
                      controller: _fatherNameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: Gender.Male,
                            groupValue: _selectedGender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          const Text('Male', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Gender.Female,
                            groupValue: _selectedGender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          const Text('Female', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Gender.Other,
                            groupValue: _selectedGender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          const Text('Other', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
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
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Date of Birth',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
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
                      controller: _dobController,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const Row(
                    children: [
                      Text(
                        'Birth Place',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
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
                      controller: _birthPlaceController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
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
                                  builder: (ctx) => const VerificationScreen1()));
                            } else {
                              print('Please fill in all required fields.');
                              // Replace with your error handling logic here
                            }
                          },
                          child: Text(
                            'Review & Verify >',
                            style: TextStyle(
                                fontSize: screenHeight * 0.015, color: Colors.white),
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
