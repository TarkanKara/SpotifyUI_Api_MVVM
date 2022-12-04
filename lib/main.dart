// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/widgets/bottom_nav_bar.dart';
import 'package:new_spotifyui_api/viewmodel/artics_view_model.dart';
import 'package:new_spotifyui_api/viewmodel/home_view_model.dart';
import 'package:new_spotifyui_api/viewmodel/profile_view_model.dart';
import 'package:new_spotifyui_api/viewmodel/search_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

import 'core/constant_color.dart';
import 'view/homepage/home_page.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeViewModelProvider>(
            create: (context) => HomeViewModelProvider(),
          ),
          ChangeNotifierProvider<ArtistsViewModelProvider>(
            create: (context) => ArtistsViewModelProvider(),
          ),
          ChangeNotifierProvider<ProfileViewModelProvider>(
            create: (context) => ProfileViewModelProvider(),
          ),
          ChangeNotifierProvider<SearchViewModelProvider>(
            create: (context) => SearchViewModelProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'New Spotify',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                titleTextStyle:
                    TextStyle(color: Icolor.appBarColor, fontSize: 30),
                actionsIconTheme: IconThemeData(color: Icolor.appBarIconColor),
                iconTheme:
                    IconThemeData(color: Icolor.appBarIconColor, size: 30)),
          ),
          home: const BottomNavigationBarr(),
        );
      },
    );
  }
}
