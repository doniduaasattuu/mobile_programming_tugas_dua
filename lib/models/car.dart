enum Transmission {
  manual,
  automatic,
}

enum Category {
  all,
  ev,
  suv,
  mpv,
  hatchback,
  citycar,
  lcgc,
  supercar,
}

class Car {
  const Car({
    required this.brand,
    required this.name,
    required this.dailyRent,
    required this.image,
    required this.electric,
    required this.year,
    required this.transmission,
    required this.speed,
    required this.seat,
    required this.engine,
    required this.baggage,
    this.category,
    this.recommended,
  });

  final String brand;
  final String name;
  final String dailyRent;
  final String image;
  final bool electric;
  final String year;
  final Transmission transmission;
  final String speed;
  final String seat;
  final String engine;
  final String baggage;
  final Category? category;
  final bool? recommended;
}
