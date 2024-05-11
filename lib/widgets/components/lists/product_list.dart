import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_compose/widgets/components/cards/product_card.dart';

import '../../../entities/product.dart';

typedef OnSelectProduct = Function(ProductToDisplay product);

class ProductList extends StatelessWidget {
  final List<ProductToDisplay> products;
  final OnSelectProduct? onSelectProduct; 

  const ProductList({super.key , required this.products , this.onSelectProduct});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: ListView.separated(
        separatorBuilder: (context,index){
          return const SizedBox(width: 16,);
        }, 
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context,index) { 
          return ProductCard(product: products[index],onTap: onSelectProduct,);
         },

    )
    );
  }
}