import 'package:flutter_widget_compose/entities/product.dart';
import 'package:flutter_widget_compose/getIt/get_it.dart';
import 'package:flutter_widget_compose/port/product.dart';

class ProductService extends IProductService {
  final IProductRepository repository = getIt.get<IProductRepository>();

  @override
  Future<List<ProductToDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts
        .map((product) => ProductToDisplay(
            id: product.id.toString(),
            category: product.category!,
            name: product.title!,
            imageUrl: product.image!,
            description: product.description!,
            price: product.price!.toDouble(),
            rate: product.rating?.rate!,
            count: product.rating?.count!))
        .toList();
  }

  @override
  Future<List<String>> getCategories() async {
    return await repository.getCategories();
  }
}
