import 'package:flutter/material.dart';
import 'package:snap_buy/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.fields.nama,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 16),
            Text('Harga: ${product.fields.price}',
                style: const TextStyle(
                  fontSize: 18.0,
                )),
            const SizedBox(height: 8),
            Text('Deskripsi:',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            Text(product.fields.description),
            const SizedBox(height: 8),
            Text('Produk Terjual: ${product.fields.produkTerjual}'),
            const SizedBox(height: 8),
            Text('Rating: ${product.fields.rating}'),
          ],
        ),
      ),
    );
  }
}
