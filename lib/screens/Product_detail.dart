import "package:flutter/material.dart";
import "package:login_practice/models/catalog.dart";
import "package:login_practice/widgets/product_sizes.dart";

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final _controller = ScrollController();

  bool _isScrolledToEnd = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _isScrolledToEnd =
            _controller.position.pixels == _controller.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var product = CatalogModel.products[0];
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Material(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(200)),
                color: Color(0xFFF3EFF9),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 15,
                  right: 30,
                  left: 30),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 18,
                          )),
                    ),
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.favorite_outline,
                          size: 18,
                        )),
                  ],
                ),
                Image.asset(
                  product.image,
                  width: 200,
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(product.desc)
                          ],
                        ),
                        Text(
                          "\$${product.price.toString()}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'AVAILABLE SIZES',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ProductSizes(size: 'UK7'),
                          SizedBox(width: 10), // add gap between widgets
                          ProductSizes(size: 'UK8'),
                          SizedBox(width: 10),
                          ProductSizes(size: 'UK9'),
                          SizedBox(width: 10),
                          ProductSizes(size: 'UK10'),
                          SizedBox(width: 10), // add final gap
                          ProductSizes(size: 'UK11'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Product Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Need a front-end Designer who can make changes on a wordpress website. Changes include : Hygiene issues, font size consistency, spacing , Responsiveness of website etc.',
                      style: TextStyle(
                          fontSize: 15,
                          height: 1.4,
                          color: Color.fromARGB(255, 77, 77, 77)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Need a front-end Designer who can make changes on a wordpress website. Changes include : Hygiene issues, font size consistency, spacing , Responsiveness of website etc.',
                      style: TextStyle(
                          fontSize: 15,
                          height: 1.4,
                          color: Color.fromARGB(255, 77, 77, 77)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    )
                  ]),
            ),
          ]),
        ),
      ),
      floatingActionButton: !_isScrolledToEnd
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: const Icon(
                Icons.shopping_cart,
              ),
            )
          : null,
    );
  }
}
