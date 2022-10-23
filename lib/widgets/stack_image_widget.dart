import 'package:travel_app/models/list_destination.dart';
import 'package:flutter/material.dart';

class StackImageDetailWidget extends StatelessWidget {
  const StackImageDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ListDestination.destination[0].image,
          height: 324,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 324,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                const Color(0xFF2E3054).withOpacity(0.61)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 52),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                splashRadius: 15,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Icon(
                      Icons.favorite,
                      size: 18,
                      color: Colors.red.shade200,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Icon(
                      Icons.file_upload,
                      size: 18,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
