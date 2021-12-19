import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.size,
    required this.categoryList,
  }) : super(key: key);

  final Size size;
  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: size.height * 0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: CategoryModel.list.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: kDefaultPadding,
                        top: kDefaultPadding / 2,
                        bottom: kDefaultPadding * 2.5),
                    width: size.width * 0.4,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Container(
                              child: Image.asset(
                                categoryList[index].imgPath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding / 2),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: kPrimaryColor.withOpacity(0.23))
                          ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        categoryList[index].name.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ])),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: categoryList[index]
                                        .gender
                                        .toUpperCase(),
                                    style: TextStyle(
                                        color: kPrimaryColor.withOpacity(0.5))),
                              ]))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
