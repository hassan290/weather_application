import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/weather_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/utils/shared/bloc_observer/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer
  Bloc.observer = MyBlocObserver();
  await setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(WeatherApp(appRouter: AppRouter()));
}
