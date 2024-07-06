import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  AdBanner({super.key, required this.isVerified});
  bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFFEFE0),
            Color(0xFFFFF3F5),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.165,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'Get ',
                      style: TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                    ),
                    Text(
                      'Hiremi ',
                      style: TextStyle(fontSize: 11.69, color: Color(0xFFC1272D)),
                    ),
                    Text(
                      'Verified ',
                      style: TextStyle(fontSize: 11.69, color: Colors.green),
                    ),
                    Text(
                      '& ',
                      style: TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                    ),
                    Text(
                      'Apply ',
                      style: TextStyle(fontSize: 11.69, color: Color(0xFFEB8D2E)),
                    ),
                  ],
                ),
                const Text(
                  'for Jobs to Be Hired by ',
                  style: TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  'Experts Easily. ',
                  style: TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 4,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.035,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your button click logic here
                    },
                    child:  Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.white,
                          size: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          isVerified ? 'Verified' : 'Verify Now >',
                          style: const TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 2,),
                const Text(
                  'T&C Apply',
                  style: TextStyle(fontSize: 8, color: Color(0xFF022A72)),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const Spacer(),
            Image.asset('assets/freepik--Characters--inject-2.png')
          ],
        ),
      ),
    );
  }
}
