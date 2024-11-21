import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/utils/shared/constants/popular_cities.dart';
import '../../../../core/utils/shared/widgets/default_container_widget.dart';
import '../manager/weather_bloc/weather_bloc.dart';
import 'cities_list_widget.dart';

class ListOfPopularCities extends StatelessWidget {
  const ListOfPopularCities({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loadingState: (_) => const SizedBox.shrink(),
          errorState: (state) => const SizedBox.shrink(),
          loadedState: (state)=> Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Popular cities', style: TTextStyles.font20GreyNormal),
              SizedBox(height: 16.h),
              SizedBox(
                height: 100.h,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 30.h,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 10.w,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      TDefaultContainerWidget(
                        title: popularCities[index],
                      ),
                ),
              ),
            ],
          ),
          loadedCitiesState: (state)=> CitiesListWidget(cities: state.cities),
        );
      },
    );
  }
}
