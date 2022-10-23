import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_bar_widget.dart';
import 'package:travel_app/widgets/bottom_nav_bar_widget.dart';
import 'package:travel_app/widgets/carousel_widget.dart';
import 'package:travel_app/widgets/categories_main_page_widget.dart';
import 'package:travel_app/widgets/list_destination_widget.dart';
import 'package:travel_app/widgets/search_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FBFF),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 57),
        children: const [
          AppBarWidget(),
          SizedBox(height: 17),
          SearchWidget(),
          SizedBox(height: 20),
          CategoriesMainPageWidget(),
          SizedBox(height: 20),
          CarouselWidget(),
          SizedBox(height: 17),
          ListDestinationWidget(),
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
