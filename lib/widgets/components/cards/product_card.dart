import 'package:flutter/material.dart';

import '../../../entities/product.dart';

typedef ProductCardTap = Function(ProductToDisplay product);

class ProductCard extends StatelessWidget {
  final ProductToDisplay product;
  final ProductCardTap? onTap;

  const ProductCard({
    super.key,
    required this.product, this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onTap != null){
          onTap!(product);
        }
      },
      child: SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          // Image.asset('assests/r34.jpg'),
          Image.network(
            product.imageUrl,
            width: 200,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const Spacer(),
              Container(
                color: const Color(0x88000000),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name.length > 15
                              ? '${product.name.substring(0, 10)}...'
                              : product.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${product.price} ฿',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    )
    );
  }
}
