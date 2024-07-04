import 'package:flutter/material.dart';

class OpportunityCard extends StatelessWidget {
  const OpportunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398,
      height: 246,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Image.asset('assets/Rectangle 57.png'),
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Human Resource Intern',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hiremi',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Location and stipend
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.grey, size: 14),
                  const SizedBox(width: 5),
                  Text(
                    'Bhopal, Madhya Pradesh, India',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.attach_money_rounded,
                      color: Colors.grey, size: 14),
                  const SizedBox(width: 5),
                  Text(
                    '₹2,000 - ₹15,000',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                height: 16,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF6E5),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 5),
                    Text('Remote',
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 16,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFEEE5),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.alarm,
                      size: 8,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5),
                    Text('Internship',
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 16,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE5EE),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Color(0xFFED509B),
                    ),
                    SizedBox(width: 5),
                    Text('1 Year Exp',
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
                child: const Text('Apply Now >', style: TextStyle(fontSize: 10),),
              )
            ],
          ),
          const SizedBox(height: 12,),
          Container(
            width: 368, // Length of the horizontal line
            height: 1, // Thickness of the line
            color: Colors.grey, // Color of the line
          ),
          const SizedBox(height: 12,),
          const Row(
            children: [
              const Text('Actively Recruiting', style: TextStyle(color: Colors.green),),
              Spacer(),
              const Text('6 days ago', style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
