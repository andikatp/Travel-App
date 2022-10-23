import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';

class FloatingButtonDetail extends StatelessWidget {
  const FloatingButtonDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log('Booked');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Container(
          margin: EdgeInsets.zero,
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF88d8f9),
                Color(0xFF5495FF),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Book Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
