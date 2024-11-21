import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/text_styles.dart';
import '../../../../core/utils/shared/widgets/search_bar_widget.dart';
import '../widgets/list_of_cities_weather.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 32.h,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Manage cities',style: TTextStyles.font24WhiteNormal,),
              SizedBox(height: 24.h),
              const SearchBarWidget(),
              SizedBox(height: 24.h),
              const ListOfCitiesWeather()
            ],
          ),
        ),
      ),
    );
  }
}

