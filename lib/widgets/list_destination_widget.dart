import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/models/list_destination.dart';
import 'package:travel_app/screens/detail_screen.dart';

class ListDestinationWidget extends StatelessWidget {
  const ListDestinationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: GoogleFonts.poppins(
                  color: Constant.kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'See All',
                style: GoogleFonts.poppins(
                  color: Constant.kTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 23),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:
                  List.generate(ListDestination.destination.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                ListDestination.destination[index].image,
                                fit: BoxFit.cover,
                                height: 56,
                                width: 52,
                              ),
                            ),
                            const SizedBox(width: 14),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ListDestination.destination[index].name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF767676),
                                  ),
                                ),
                                Text(
                                  ListDestination.destination[index].date,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF767676),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 28,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
