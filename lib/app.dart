import 'package:atoa_ui/configs/app-config.dart';
import 'package:atoa_ui/routes.dart';
import 'package:atoa_ui/shared/service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //GET MATERIAL APP FOR SNACKBAR ETC USE
    return GetMaterialApp(
      navigatorKey: appNavigationService.myNavigatorKey,
      title: "ATOA",
      debugShowCheckedModeBanner: appConfig.showDebugBanner,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // themeMode: themeController.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      // darkTheme: themeController.themeDark,
      initialRoute: Routes.home,
      onGenerateRoute: Routes.getGeneratedRoute,
    );
  }
}
