import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

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
      width: MediaQuery.of(context).size.width * 0.9,
      height: 123.66,
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
                      style:
                          TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                    ),
                    Text(
                      'Hiremi ',
                      style:
                          TextStyle(fontSize: 11.69, color: Color(0xFFC1272D)),
                    ),
                    Text(
                      'Verified ',
                      style: TextStyle(fontSize: 11.69, color: Colors.green),
                    ),
                    Text(
                      '& ',
                      style:
                          TextStyle(fontSize: 11.69, color: Color(0xFF022A72)),
                    ),
                    Text(
                      'Apply ',
                      style:
                          TextStyle(fontSize: 11.69, color: Color(0xFFEB8D2E)),
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
                  height: 26,
                  
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the radius as needed
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your button click logic here
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                          size: 6.5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Verify Now >',
                          style: TextStyle(color: Colors.white, fontSize: 7.59),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 2,),
                const Text(
                  'T&C Apply',
                  style: TextStyle(fontSize: 5.34, color: Color(0xFF022A72)),
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
