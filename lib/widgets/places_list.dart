import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/places_detail.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(child: Text("No places added yet."));
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder:
          (context, index) => ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: FileImage(places[index].image),
            ),
            title: Text(places[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PlacesDetail(place: places[index]),
                ),
              );
            },
          ),
    );
  }
}
