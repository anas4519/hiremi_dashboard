import 'package:flutter/material.dart';

class OpportunityCard extends StatelessWidget {
  OpportunityCard(
      {super.key,
      required this.dp,
      required this.role,
      required this.company,
      required this.location,
      required this.stipend,
      required this.mode,
      required this.exp,
      required this.type});
  Image dp;
  final String role;
  String company;
  String location;
  String stipend;
  String mode;
  String type;
  int exp;

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
                child: dp,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    role,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    company,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Location and stipend
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_rounded, color: Colors.grey, size: 14),
                  const SizedBox(width: 5),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.attach_money_rounded,
                      color: Colors.grey, size: 14),
                  const SizedBox(width: 5),
                  Text(
                    stipend,
                    style: const TextStyle(fontSize: 12),
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Colors.amber,
                    ),
                    const SizedBox(width: 5),
                    Text(mode,
                        style: const TextStyle(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.alarm,
                      size: 8,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(type,
                        style: const TextStyle(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Color(0xFFED509B),
                    ),
                    const SizedBox(width: 5),
                    Text('$exp Year Exp',
                        style: const TextStyle(
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
                child: const Text(
                  'Apply Now >',
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 368, // Length of the horizontal line
            height: 1, // Thickness of the line
            color: Colors.grey, // Color of the line
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Text(
                'Actively Recruiting',
                style: TextStyle(color: Colors.green),
              ),
              Spacer(),
               Text('6 days ago', style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
