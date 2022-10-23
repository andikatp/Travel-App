import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constant/constant.dart';

class CategoriesMainPageWidget extends StatefulWidget {
  const CategoriesMainPageWidget({
    super.key,
  });

  @override
  State<CategoriesMainPageWidget> createState() =>
      _CategoriesMainPageWidgetState();
}

class _CategoriesMainPageWidgetState extends State<CategoriesMainPageWidget> {
  List<String> categories = [
    'Sights',
    'Tour',
    'Adventure',
  ];
  // ignore: no_leading_underscores_for_local_identifiers
  int _tappedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _tappedIndex = index;
              });
            },
            child: Container(
              height: 23,
              width: 100,
              decoration: BoxDecoration(
                gradient: _tappedIndex == index
                    ? const LinearGradient(
                        colors: [
                          Color(0xFF8BD8F9),
                          Color(0xFF5495FF),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      )
                    : null,
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                categories[index],
                style: GoogleFonts.poppins(
                  color: _tappedIndex == index
                      ? Colors.white
                      : Constant.kTextColor,
                  fontSize: 12,
                  fontWeight:
                      _tappedIndex == index ? FontWeight.w600 : FontWeight.w400,
                ),
              )),
            ),
          );
        }),
      ),
    );
  }
}
