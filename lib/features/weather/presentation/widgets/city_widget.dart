import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/text_styles.dart';

import '../../../../core/routing/routes.dart';

class CityWidget extends StatelessWidget {
  final String cityName;
  const CityWidget({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context, TRoutes.search) , icon: Icon(Icons.add,size: 30.sp,color: Colors.white,)),
          // SizedBox(width: MediaQuery.of(context).size.width*0.27.w,),
          Align(alignment: Alignment.center,child: Text(textAlign: TextAlign.center,cityName,style: TTextStyles.font34WhiteBold)),
          SizedBox(width: 30.w,height: 30.h),
        ],
      ),
    );
  }
}
