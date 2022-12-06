class Sight {
  // Описание объекта.
  final String details;
  // Широта.
  final double lat;
  // Долгота.
  final double lon;
  final String name;
  // Тип объекта.
  final String type;
  // Ссылка на изображение объекта.
  final String url;

  const Sight({
    required this.details,
    required this.lat,
    required this.lon,
    required this.name,
    required this.type,
    required this.url,
  });
}
