import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maylme/Screens/CardRow.dart';
import 'package:maylme/widget/category_card.dart';
import 'package:maylme/widget/list.dart';
import 'package:maylme/widget/textstyles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff51c1f4),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color(0xff51c1f4),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          "Express Shipping.\nThe Human Way.",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        )),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Maylme connects travelers that have extra luggage space with senders that wants to ship items to the same destination.",
                              textAlign: TextAlign.center,
                              style: normalStyle),
                        )),
                        Image.asset("assets/images/imageq.png"),
                        Center(
                          child: Text(
                            "So which one are you?",
                            style: normalStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 430),
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 370,
                        decoration: BoxDecoration(color: Color(0xfffffbdc)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            typeCard(
                                title: "I\'m a traveller",
                                imagetitle: "suitcase"),
                            Container(
                              height: 100,
                              width: 2,
                              color: Color(0xffbfbca4),
                            ),
                            typeCard(title: "I\'m a mayler", imagetitle: "box"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
CardRow(image: "image", heading: "Why use Maylme?", 
description: "It’s a fast and affordable way to send your packages internationally. Unlike traditional shipping services, Maylme is a community based logistics service that helps travelers rent their extra luggage space to Maylers who want to send packages to the same destination. This means travelers can make extra money and senders can get their items shipped faster and cheaper."),
          
              SizedBox(
                height: 20,
              ),
              listCard(),
              SizedBox(height: 20,),
              CardRow(image: "image", heading: "Senders, match with people traveling to where you want to send your package.", description: "Your package usually arrives to your destination in less than 24 hours, making it much faster and convenient than conventional postal services.")
            ],
          ),
        ),
      ),
    );
  }
}
