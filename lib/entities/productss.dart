class Productss {
  String id;
  String category;
  String name;
  String? description;
  String imageUrl;
  double price;

  Productss(
      {required this.id,
      required this.category,
      required this.name,
      this.description,
      required this.imageUrl,
      required this.price});
}
