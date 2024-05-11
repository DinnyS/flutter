import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_compose/entities/product.dart';
import 'package:flutter_widget_compose/getIt/get_it.dart';
import 'package:flutter_widget_compose/widgets/components/jumbotron/home_jumbotron.dart';
import 'package:flutter_widget_compose/widgets/components/lists/product_list.dart';
import 'package:flutter_widget_compose/widgets/components/navbar/bottom_navber.dart';
import 'package:flutter_widget_compose/widgets/components/navbar/navbar.dart';
import 'package:flutter_widget_compose/widgets/components/sections/catalog.dart';
import 'package:flutter_widget_compose/widgets/loadingIndecator/loading.dart';
import 'package:go_router/go_router.dart';

import '../mocks/products.dart';
import '../port/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IProductService service = getIt.get<IProductService>();

  bool isLoading = false;

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  void onSelectProduct(ProductToDisplay product) {
    context.go('/detail' , extra: product);
  }

  @override
  void initState() {
    super.initState;
    isLoading = true;
    getProducts();
  }

  void getProducts() async {
    final categories = await service.getCategories();
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Navbar(),
            isLoading
                ? const Expanded(
                    child: Center(child: Loading()),
                  )
                : Expanded(
                    child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          HomeJumbotron(
                              imageUrl: categoryImages[categories[index]]!,
                              title: categories[index].toUpperCase(),
                              buttonTitle: 'ViewCollection'),
                          Catalog(
                            title: 'All products',
                            products: products[index],
                            onSelectProduct: onSelectProduct,
                          ),
                          const SizedBox(
                            height: 24,
                          )
                        ],
                      );
                    },
                  )),
                  const BottomNavbar(),
          ],
        ),
      ),
    );
  }
}
