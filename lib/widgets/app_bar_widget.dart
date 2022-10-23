import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/constant/constant.dart';

import '../screens/on_boarding_screen.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                splashRadius: 17,
                iconSize: 24,
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('showHome', false);
                  if (!mounted) return;
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFF425884),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Text(
                'Explore',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Constant.kTextColor,
                ),
              ),
            ],
          ),
          Container(
            height: 31,
            width: 31,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF425884).withOpacity(0.10),
            ),
            child: const Icon(
              Icons.filter_alt,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
