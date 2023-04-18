import 'package:flutter/material.dart';

class ProductSizes extends StatelessWidget {
  final String size;
  const ProductSizes({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
                width: 1, color: const Color.fromARGB(155, 158, 158, 158))),
        child: Text(
          size,
          style: const TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
        ),
      ),
    );
  }
}
