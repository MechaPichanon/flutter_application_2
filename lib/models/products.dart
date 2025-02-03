// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

class Products {
    int id;
    String title;
    String description;
    int price;
    double star;
    String imageUrl;

    Products({
        required this.id,
        required this.title,
        required this.description,
        required this.price,
        required this.star,
        required this.imageUrl,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        star: json["star"]?.toDouble(),
        imageUrl: json["imageUrl"],
    );
}