import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class StubData {
  static const List<Place> places = [
    Place(
      id: '1',
      latLng: LatLng(-8.127365, -79.045730),
      name: 'Choque',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Choque del bus entrafesa con taxi. dos heridos',
      category: PlaceCategory.favorite,
      starRating: 5,
    ),
    Place(
      id: '2',
      latLng: LatLng(-8.129203, -79.045451),
      name: 'Incendio',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Incendio de vivienda, un muerto',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '3',
      latLng: LatLng(-8.127110, -79.0442173),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Robo al agente BCP',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '4',
      latLng: LatLng(-8.130636, -79.044099),
      name: 'Comtaminacion Ambiental',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Monton de basura frente al colegio. Porfavor que pase el camion de bausra',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '5',
      latLng: LatLng(-8.129659, -79.042055),
      name: 'Violencia Familiar',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Mi esposo esta borracho y violento, ayuda porfavor',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '6',
      latLng: LatLng(-8.127917, -79.041926),
      name: 'Incendio',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Incendio en el Hotel Miraflores, que vengan los bombreos.',
      category: PlaceCategory.visited,
      starRating: 5,
    ),
    Place(
      id: '7',
      latLng: LatLng(-8.129850, -79.041583),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Asaltaron a mi hijo, le quitaron su laptop y celular.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '8',
      latLng: LatLng(-8.130233, -79.0437078),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Asalto al Banco de la Nacion, el de seguridad esta herido de bala',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '9',
      latLng: LatLng(-8.125984, -79.043943),
      name: 'Comercio Informal',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Ambulante se apropiaron de la via, generando trafico vehicular.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '10',
      latLng: LatLng(-8.129404, -79.044394),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Ingresaron a mi casa a robar.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '11',
      latLng: LatLng(-8.127726, -79.044823),
      name: 'Incendio',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Incendio de vehiculo en toda la avenida',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '12',
      latLng: LatLng(-8.127015, -79.044329),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Robo en el Restaurante "EL SABOR", todos los comensales fueron asaltados.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '13',
      latLng: LatLng(-8.127376, -79.042677),
      name: 'Violencia Familiar',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Mi vencino le esta golpeando a su mujer.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '14',
      latLng: LatLng(-8.128438, -79.042109),
      name: 'Trafico',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Trafico altura del colegio Jesús El Nazareno, esta pasando el señor de los milagros.',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '15',
      latLng: LatLng(-8.129681, -79.041926),
      name: 'Robo',
      robo: 'Robo',
      incendio: 'incendio',
      contaminacion: 'contaminación',
      violencia: 'violencia',
      description:
          'Robo al agente BCP.',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
  ];

  static const List<String> reviewStrings = [
    'Robo en el Restaurante "EL SABOR", todos los comensales fueron asaltados.',
    'Ambulante se apropiaron de la via, generando trafico vehicular.',
    'Incendio en el Hotel Miraflores, que vengan los bombreos.'
  ];
}
