import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('VERIFY NOW'),
      ),
    );
  }
}