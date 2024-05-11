import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_compose/entities/product.dart';
import 'package:flutter_widget_compose/widgets/elements/texts/text_data.dart';
import 'package:flutter_widget_compose/widgets/elements/texts/text_data_title.dart';
import 'package:flutter_widget_compose/widgets/elements/texts/text_title.dart';
import 'package:flutter_widget_compose/widgets/loadingIndecator/loading.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductToDisplay product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Details',
          ),
          
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: ListView(children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(product.imageUrl , fit: BoxFit.contain),
                          // child: Image.asset(
                          //   'assests/r34.jpg',
                          //   fit: BoxFit.cover,
                          // )
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),

                            border: Border(top: BorderSide(color: Colors.black87)),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${product.name}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${product.rate.toString()} ( ${product.count.toString()} )',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    '${product.price} ฿',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                    'Detail',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                              TextData(title: '${product.description}'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]))));
  }
}
