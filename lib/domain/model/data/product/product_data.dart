// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:untitled/domain/model/data/product/product_rating_data.dart';

class ProductData {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  ProductRatingData rating;

  ProductData(
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  );
}
