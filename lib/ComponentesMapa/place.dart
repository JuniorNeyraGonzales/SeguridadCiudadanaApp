import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum PlaceCategory {
  favorite,
  visited,
  wantToGo,
}

class Place {
  const Place({
    @required this.id,
    @required this.latLng,
    @required this.name,
    @required this.robo,
    @required this.incendio,
    @required this.contaminacion,
    @required this.violencia,
    @required this.category,
    this.description,
    this.starRating = 0,
  })  : assert(id != null),
        assert(latLng != null),
        assert(name != null),
        assert(robo != null),
        assert(incendio != null),
        assert(contaminacion != null),
        assert(violencia != null),
        assert(category != null),
        assert(starRating != null && starRating >= 0 && starRating <= 5);

  final String id;
  final LatLng latLng;
  final String name;
  final String robo;
  final String incendio;
  final String contaminacion;
  final String violencia;
  final PlaceCategory category;
  final String description;
  final int starRating;

  double get latitude => latLng.latitude;
  double get longitude => latLng.longitude;

  Place copyWith({
    String id,
    LatLng latLng,
    String name,
    String robo,
    String incendio,
    String contaminacion,
    String violencia,
    PlaceCategory category,
    String description,
    int starRating,
  }) {
    return Place(
      id: id ?? this.id,
      latLng: latLng ?? this.latLng,
      name: name ?? this.name,
      robo: robo ?? this.robo,
      incendio: incendio ?? this.incendio,
      contaminacion: contaminacion ?? this.contaminacion,
      violencia: violencia?? this.violencia,
      category: category ?? this.category,
      description: description ?? this.description,
      starRating: starRating ?? this.starRating,
    );
  }
  static List<Place> getCompanies(){
    return <Place>[
     /* Place(1, 'Robo'),
      Place(2, 'Incendio'),
      Place(3, 'Contaminacion'),
      Place(4, 'violencia'),*/
    ];
  }
}
