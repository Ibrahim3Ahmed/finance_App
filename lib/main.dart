import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/router_generation_config.dart';
import 'core/styling/thema_data.dart';


void main()  {

  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

