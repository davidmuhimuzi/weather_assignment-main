//I expected it to take me 2 hours, took 7 hours. Mostly because I was stuck on one bug. Week 9.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewModels/city_entry_view_model.dart';
import 'viewModels/forecast_view_model.dart';
import 'views/home_view.dart';


/// Attribution to https://medium.com/@carey.kenneth for most of this code
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CityEntryViewModel>(
          create: (_) => CityEntryViewModel()),
      ChangeNotifierProvider<ForecastViewModel>(
          create: (_) => ForecastViewModel()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Demo',
      home: HomeView(),
    );
  }
}
