import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class StubData {
  static const List<Place> places = [
    Place(
      id: '1',
      latLng: LatLng(-7.714092, -79.108793),
      name: 'Choque',
      description:
          'Choque del bus entrafesa con taxi. dos heridos',
      category: PlaceCategory.favorite,
      starRating: 5,
    ),
    Place(
      id: '2',
      latLng: LatLng(-7.714008, -79.107739),
      name: 'Incendio',
      description:
          'Incendio de vivienda, un muerto',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '3',
      latLng: LatLng(-7.714462, -79.106973),
      name: 'Robo',
      description:
          'Robo al agente BCP',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '4',
      latLng: LatLng(-7.713585, -79.107946),
      name: 'Comtaminacion Ambiental',
      description:
          'Monton de basura frente al colegio. Porfavor que pase el camion de bausra',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '5',
      latLng: LatLng(-7.713569, -79.107374),
      name: 'Violencia Familiar',
      description:
          'Mi esposo esta borracho y violento, ayuda porfavor',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '6',
      latLng: LatLng(-7.713844, -79.109118),
      name: 'Incendio',
      description:
          'Incendio en el Hotel Miraflores, que vengan los bombreos.',
      category: PlaceCategory.visited,
      starRating: 5,
    ),
    Place(
      id: '7',
      latLng: LatLng(-7.713671, -79.109880),
      name: 'Robo',
      description:
          'Asaltaron a mi hijo, le quitaron su laptop y celular.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '8',
      latLng: LatLng(-7.713158, -79.108698),
      name: 'Robo',
      description:
          'Asalto al Banco de la Nacion, el de seguridad esta herido de bala',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '9',
      latLng: LatLng(-7.713088, -79.107739),
      name: 'Comercio Informal',
      description:
          'Ambulante se apropiaron de la via, generando trafico vehicular.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '10',
      latLng: LatLng(-7.715059, -79.107630),
      name: 'Robo',
      description:
          'Ingresaron a mi casa a robar.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '11',
      latLng: LatLng(-7.713531, -79.106944),
      name: 'Incendio',
      description:
          'Incendio de vehiculo en toda la avenida',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '12',
      latLng: LatLng(-7.713779, -79.107184),
      name: 'Robo',
      description:
          'Robo en el Restaurante "EL SABOR", todos los comensales fueron asaltados.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '13',
      latLng: LatLng(-7.714492, -79.108246),
      name: 'Violencia Familiar',
      description:
          'Mi vencino le esta golpeando a su mujer.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '14',
      latLng: LatLng(-7.714589, -79.108796),
      name: 'Trafico',
      description:
          'Trafico altura del colegio Jesús El Nazareno, esta pasando el señor de los milagros.',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '15',
      latLng: LatLng(-7.713909, -79.107173),
      name: 'Robo',
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
