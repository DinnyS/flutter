import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_compose/entities/product.dart';
import 'package:flutter_widget_compose/widgets/components/lists/product_list.dart';
import 'package:flutter_widget_compose/widgets/elements/texts/text_title.dart';

class Catalog extends StatelessWidget {
  final List<ProductToDisplay> products;
  final String title;
  final OnSelectProduct? onSelectProduct;

  const Catalog({super.key , required this.products , required this.title , this.onSelectProduct});

 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 5),
          child: TextTitle(title: title),
        ),
        ProductList(products: products , onSelectProduct: onSelectProduct,)
      ],
    );
  }
}