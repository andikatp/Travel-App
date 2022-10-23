import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.zero,
          hintText: 'Mount Bruno',
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xFFBFBFBF),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.search,
              size: 22,
              color: Color(0xFFBFBFBF),
            ),
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Color(0xFFBFBFBF),
                  width: 1.0,
                ),
              ),
            ),
            child: const Icon(
              Icons.tune,
              color: Color(0xFFBFBFBF),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
