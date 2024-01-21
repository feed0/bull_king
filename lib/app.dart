import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '/utils/theme/theme.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';

class TApp extends StatelessWidget {
  const TApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
