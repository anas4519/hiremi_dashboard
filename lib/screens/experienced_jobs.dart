import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/widgets/new_navBar.dart';

class Experienced_Jobs extends StatefulWidget {
  const Experienced_Jobs({super.key});

  @override
  State<Experienced_Jobs> createState() => _Experienced_JobsState();
}

class _Experienced_JobsState extends State<Experienced_Jobs> {

  @override


  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Experienced Jobs",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/Frame 110.png'),
          ),
          Image.asset('assets/images/Team work-bro.png'),
          SizedBox(height: screenHeight*0.01,),
          const Text(
            'Hiremi’s Recruiters are planning for new jobs',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            textAlign: TextAlign.center,
          ),
          const Text(
            'please wait for few days',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}