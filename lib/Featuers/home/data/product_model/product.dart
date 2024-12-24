import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  String image;
  String brandName; // Fixed typo
  String productName;
  int currentPrice;
  int oldPrice;

  Product({
    required this.image,
    required this.brandName,
    required this.productName,
    required this.currentPrice,
    required this.oldPrice,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      image: map['image'] as String,
      brandName: map['brand'] as String,
      productName: map['title'] as String,
      currentPrice: map['price'] as int,
      oldPrice: (map['price'] + (map['discount'] ?? 0)) as int, // Handle null discount
    );
  }

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}