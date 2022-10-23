import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/models/list_destination.dart';

class DetailLocationWidget extends StatelessWidget {
  const DetailLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ListDestination.destination[0].name,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Constant.kTextColor,
                    ),
                  ),
                  Text(
                    ListDestination.destination[0].location,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Constant.kTextColor,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$50',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Constant.kTextColor,
                    ),
                  ),
                  Text(
                    'Per person',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Constant.kTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 23),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                  color: const Color(0xFF425884).withOpacity(0.50),
                  fontFamily: GoogleFonts.poppins().fontFamily),
              children: [
                TextSpan(
                  text: ListDestination.destination[0].name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(
                  text:
                      ', lorem ipsum dolor sit amet, consectetur adipiscing elit. Et egestas condimentum vitae maecenas sed est turpis eros.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      color: Colors.grey.shade200,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue.shade300,
                      ),
                    ),
                    const SizedBox(width: 17),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ListDestination.destination[0].location,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Constant.kTextColor.withOpacity(0.50),
                          ),
                        ),
                        Text(
                          'East Java, Indonesia',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF767676),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      color: Colors.grey.shade200,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue.shade300,
                      ),
                    ),
                    const SizedBox(width: 17),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Open',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Constant.kTextColor.withOpacity(0.50),
                          ),
                        ),
                        Text(
                          '09:00 AM',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF767676),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
