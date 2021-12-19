import 'package:flutter/material.dart';

import '../constants.dart';

class ProductModel {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final String imgPath;

  ProductModel(
      {required this.name,
      required this.price,
      required this.desc,
      required this.color,
      required this.brand,
      required this.imgPath});

  static List<ProductModel> list = [
    ProductModel(
      name: "Nike Air Jordan 1 Retro High",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 184,
      color: AppColors.blueColor,
      brand: "Nike",
      imgPath: "2.png",
    ),
    ProductModel(
      name: "Converse X OPI Chuck Taylor",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 123,
      color: AppColors.yellowColor,
      brand: "Converse",
      imgPath: "1.png",
    ),
    ProductModel(
      name: "Nike Air Jordan 1 Retro High",
      desc:
          "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
      price: 135,
      color: AppColors.redColor,
      brand: "Nike",
      imgPath: "3.png",
    ),
  ];
}

class CategoryModel {
  final String name;
  final String gender;
  final String imgPath;

  CategoryModel(
      {required this.name, required this.gender, required this.imgPath});

  static List<CategoryModel> list = [
    CategoryModel(
      name: "Shirts",
      gender: "Men",
      imgPath: "assets/nike.jpg",
    ),
    CategoryModel(
      name: "Jeans",
      gender: "Women",
      imgPath: "assets/jeans.jpg",
    ),
    CategoryModel(
      name: "Sneakers",
      gender: "Women",
      imgPath: "assets/sneaker.jpg",
    ),
  ];
}

class BrandModel {
  final String name;
  final String gender;
  final String imgPath;

  BrandModel({required this.name, required this.gender, required this.imgPath});

  static List<BrandModel> list = [
    BrandModel(
      name: "Nike",
      gender: "",
      imgPath: "assets/nikeLogo.jpg",
    ),
    BrandModel(
      name: "Adidas",
      gender: "",
      imgPath: "assets/adidasLogo.jpg",
    ),
    BrandModel(
      name: "The North Face",
      gender: "",
      imgPath: "assets/TNF.jpg",
    ),
  ];
}
