import 'package:favorite_places_app/screens/add_place.dart';
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
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        backgroundColor: Colors.blue[100],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AddPlace()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(child: Text("No Favorite Places added yet.")),
    );
  }
}
