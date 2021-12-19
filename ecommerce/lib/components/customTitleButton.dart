import 'package:ecommerce/components/customTitle.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.text,
    required this.press,
    required this.moreText,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final String moreText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderlining(
            title: text,
          ),
          ElevatedButton(
            onPressed: press,
            child: Text(
              moreText,
            ),
            style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
