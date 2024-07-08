import 'package:flutter/material.dart';



class RoundedImage extends StatelessWidget {
  const RoundedImage({super.key, required this.image, required this.border});

  final String image;
  final Border border;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        shape: BoxShape.circle
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(image,height: 31.5,width: 31.5,),
      ),
    );
  }
}
