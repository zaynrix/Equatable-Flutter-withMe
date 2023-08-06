import 'package:flutter/material.dart';

class PhoneCardWidget extends StatelessWidget {
  final String image;
  final String title;

  const PhoneCardWidget({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image.network(
            image,
            width: 170,
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
