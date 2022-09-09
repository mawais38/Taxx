import 'package:flutter/foundation.dart';

@immutable
class Parts {
  final String image;
  final String description;
  final String price;


  const Parts(
      this.image,
      this.description,
      this.price,
      );

  factory Parts.fromJson(Map<String, dynamic> json) {
    return Parts(
      json['image'],
      json['description'],
      json['price'],
    );
  }

  toMap() => {
    "image": image,
    "description": description,
    "price": price,
  };
}