import 'package:flutter/material.dart';

class ListPicDetailWidget extends StatelessWidget {
  static const List<String> _images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
    'assets/image4.png',
  ];

  const ListPicDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF8BD8F9).withOpacity(0.10),
            const Color(0xFF5495FF).withOpacity(0.10)
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          _images.length,
          (index) => SizedBox(
            width: 60,
            height: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
