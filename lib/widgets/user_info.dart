import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFFBECEC),
          radius: MediaQuery.of(context).size.width * 0.07,
          child: const Icon(
            Icons.person,
            color: Color(0xFFC1272D),
            size: 18.86,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Harsh Pawar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.fingerprint,
                  size: 10.7,
                ),
                Text(
                  'App ID: ',
                  style: TextStyle(fontSize: 10.7),
                ),
                Text(
                  'HM 23458 73432',
                  style: TextStyle(fontSize: 10.7, color: Colors.grey),
                ),
                
              ],
            ),
            
          ],
        ),
        const Spacer(),
        Container(
          height: MediaQuery.of(context).size.width * 0.08,
          width: MediaQuery.of(context).size.width * 0.17,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/new_releases (1).png'),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                const Text(
                  'Verfied',

                  style: TextStyle(color: Colors.white, fontSize: 8.42),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
