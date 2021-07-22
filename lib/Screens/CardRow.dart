import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maylme/widget/textstyles.dart';

class CardRow extends StatelessWidget {
  final String image;
  final String heading;
  final String description;
  CardRow({required this.image,required this.heading,required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          "assets/svg/$image.svg",
          width: 100,
          height: 100,
        ),
        Container(
          width: 200,
          child: Column(
            children: [
              Text(
                heading,
                style: headingStyle,
              ),
              Text(
                description,
                maxLines: 10,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        )
      ],
    );
  }
}
