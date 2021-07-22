import 'package:flutter/widgets.dart';
import 'package:maylme/widget/category_card.dart';
var colorList = [0xfff6fcff, 0xffe6f8fe, 0xfff6fcff];
    var iconList = ["destination", "cash", "time"];
    var nameList = [
      "Maylme lets you choose to be a traveler or a sender with people heading to the same destination",
      "Be a Maylme Traveler to make some money",
      "Be a Maylme Sender to save some time"
    ];
Widget listCard() {
  return Container(
    height: 230,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return cardType2(
              color1: colorList[index].toInt(),
              text: "${nameList[index].toString()}",
              image: iconList[index].toString());
        }),
  );
}
