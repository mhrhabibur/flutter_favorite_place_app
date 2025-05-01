import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places_app/screens/places.dart';

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
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PlacesScreen());
  }
}
