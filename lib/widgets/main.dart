import 'package:favorite_places_app/screens/add_place.dart';
import 'package:favorite_places_app/screens/places.dart';
import 'package:flutter/material.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 102, 6, 247),
  surface: Color.fromARGB(255, 56, 49, 66),
);

final theme = ThemeData.from(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PlacesScreen());
  }
}
