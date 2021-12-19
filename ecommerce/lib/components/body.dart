import 'package:ecommerce/components/brands.dart';
import 'package:ecommerce/components/categories.dart';
import 'package:ecommerce/components/customTitle.dart';
import 'package:ecommerce/components/customTitleButton.dart';
import 'package:ecommerce/components/header_searchbox.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CategoryModel> categoryList = CategoryModel.list;
  List<BrandModel> brandList = BrandModel.list;
  List<ProductModel> productList = ProductModel.list;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            text: "Categories",
            press: () {},
            moreText: "More",
          ),
          CategoryList(size: size, categoryList: categoryList),
          TitleWithMoreButton(
            text: "Brands",
            press: () {},
            moreText: "More",
          ),
          BrandList(size: size, brandList: brandList),
          TitleWithMoreButton(
            text: "Just For You",
            press: () {},
            moreText: "View All",
          ),
          SizedBox(height: 15),
          ...productList.map((data) {
            return GestureDetector(
              onTap: () {
                Get.to(DetailPage(productModel: data));
              },
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      )
                    ]),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/${data.imgPath}"),
                      width: 100,
                      height: 60,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              "${data.name}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "${data.brand}",
                            style: TextStyle(
                              color: Colors.black26,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "\$${data.price.toInt()}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
