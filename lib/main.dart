import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'src/resources/r.dart';
import 'src/screens/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: <GetPage>[
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
      ],
      initialRoute: '/',
      theme: ThemeData(
        scaffoldBackgroundColor: primary,
        primarySwatch: Colors.cyan,
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: R.colors.secondary,
        // ),
      ),
    );
    //   MultiProvider(
    //   providers: <SingleChildWidget>[
    //     // ChangeNotifierProvider<SomethingElse>(
    //     //   create: (_) => SomethingElse(),
    //     // ),
    //   ],
    //   builder: (_, __) => GetMaterialApp(
    //     getPages: <GetPage>[
    //       GetPage(
    //         name: '/',
    //         page: () => SplashScreen(),
    //       ),
    //     ],
    //     initialRoute: '/',
    //     theme: ThemeData(
    //       scaffoldBackgroundColor: primary,
    //       primarySwatch: Colors.cyan,
    //       // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //       //   backgroundColor: R.colors.secondary,
    //       // ),
    //     ),
    //   ),
    // );
  }
}
