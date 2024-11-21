import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/list_of_popular_cities.dart';
import '../widgets/search_bar_and_cancel_button_widget.dart';

class CitySearchScreen extends StatelessWidget {
  const CitySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBarAndCancelButtonWidget(),
                SizedBox(height: 40.h),
                const ListOfPopularCities(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
