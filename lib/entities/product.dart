class ProductToDisplay {
  String id;
  String category;
  String name;
  String? description;
  String imageUrl;
  double price;
  num? rate;
  num? count;


  ProductToDisplay(
      {required this.id,
      required this.category,
      required this.name,
      this.description,
      required this.imageUrl,
      required this.price,
      this.rate,
      this.count
      });
}
