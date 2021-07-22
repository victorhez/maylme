import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget typeCard({required String  title,required String imagetitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 5),
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
      SvgPicture.asset("assets/svg/$imagetitle.svg")
    ],
  );
}

Widget cardType2({required String text, required String image, required int color1}){
  return Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Color(color1),
                      boxShadow: [
                        BoxShadow( offset: Offset(1, 2), blurRadius: 2)
                      ]
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/$image.svg"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("$text", textAlign: TextAlign.justify),
                          )
                        ],)
                      );
}