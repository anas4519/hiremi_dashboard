import 'package:flutter/material.dart';

class CircleRow extends StatelessWidget {
  const CircleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width:15,
          height: 15,
          decoration: const BoxDecoration(
            color: Color(0xFFC1272D), // Color for the filled circle
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8), // Spacing between circles
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // Border color for empty circles
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
