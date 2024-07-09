import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/screens/verify.dart';

class CustomAlertbox extends StatelessWidget {
  const CustomAlertbox({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Container(
                    width: screenWidth * 0.08,
                    height: screenWidth * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        size: screenWidth * 0.032,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    width: screenWidth * 0.310, // 125/400
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      
                    ),
                  ),
                  Icon(
                    Icons.error_rounded,
                    color: const Color(0xFFC1272D),
                    size: screenWidth * 0.105,
                  ),
                  Container(
                    height: 1,
                    width: screenWidth * 0.310, // 125/400
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              const Text(
                'Please, Review & Verify Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: screenWidth * 0.8,
                height: screenHeight * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  color: Colors.green[100],
                ),
                child: const Center(
                  child: Text(
                    'Additional Benefits will be unlocked once\n Verification Payment Completed.',
                    style: TextStyle(color: Colors.green, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.04,
          color: const Color(0xFFC1272D),
          child: const Center(
            child: Text(
              '₹ 1000 / Life Time Subscription',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 11.42),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Center(
          child: Column(
            children: [
              const Text(
                'Note: Verification is mandatory for\nspecial content access.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  color: Colors.green,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerificationScreen()));
                  },
                  child: const Text(
                    'Review & Verify Now >',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
