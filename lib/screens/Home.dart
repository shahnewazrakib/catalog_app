import "package:flutter/material.dart";
import "package:login_practice/widgets/drawer.dart";
import "package:login_practice/models/catalog.dart";

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Catalog App")),
      body: Material(
        color: const Color(0x00F4F6F4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            itemCount: CatalogModel.products.length + 15,
            itemBuilder: (context, index) {
              var product = CatalogModel.products[0];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/product-details');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                      elevation: 0,
                      child: Ink(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0x529E9E9E), width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Row(children: [
                            Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFFF4F6F4)),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Image.asset(
                                product.image,
                                width: 100,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(product.desc),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ButtonBar(
                                      alignment: MainAxisAlignment.spaceBetween,
                                      buttonPadding: EdgeInsets.zero,
                                      children: [
                                        Text(
                                          "\$${product.price.toString()}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFD4371B),
                                              fontSize: 16),
                                        ),
                                        ElevatedButton(
                                            style: const ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    StadiumBorder()),
                                                elevation:
                                                    MaterialStatePropertyAll(0),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Color(0xFF36334D))),
                                            onPressed: () {},
                                            child: const Text('Cart'))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ),
      drawer: const Mydrawer(),
    );
  }
}
