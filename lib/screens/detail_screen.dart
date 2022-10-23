import 'package:flutter/material.dart';
import 'package:travel_app/widgets/detail_location_widget.dart';
import 'package:travel_app/widgets/floating_button_detail.dart';
import 'package:travel_app/widgets/list_image_detail.dart';
import 'package:travel_app/widgets/stack_image_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingButtonDetail(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const StackImageDetailWidget(),
          const ListPicDetailWidget(),
          const SizedBox(height: 17),
          const DetailLocationWidget(),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
            ),
            child: SizedBox(
              height: 256,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/map.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
