import 'package:favorite_places_app/models/place.dart';
import 'package:flutter/material.dart';

class PlacesDetail extends StatefulWidget {
  const PlacesDetail({super.key, required this.place});
  final Place place;

  @override
  State<PlacesDetail> createState() => _PlacesDetailState();
}

class _PlacesDetailState extends State<PlacesDetail> {
  bool _showAppBar = true;

  void _toggleAppBar() {
    setState(() {
      _showAppBar = !_showAppBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _showAppBar ? AppBar(title: const Text("Tap to Hide AppBar")) : null,
      body: GestureDetector(
        onTap: _toggleAppBar,
        child: Stack(
          children: [
            Image.file(
              widget.place.image,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
