import 'package:favorite_places_app/models/place.dart';
import 'package:riverpod/riverpod.dart';

class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlaceProvider = StateNotifierProvider((ref) => UserPlaceNotifier());
