import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/detailsSection.dart';

import '../utils/styles.dart';

class CardImage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String rate;
  const CardImage({
    required this.image,
    required this.name,
     required this.price,
    required this.rate,
     super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
          height: 350,
          width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: small, bottom: medium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: accentLight,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          width: 36,
                          height: 36,
                          child: Center(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                                child: Icon(Icons.arrow_back_ios_new_outlined,color: icon)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: accentLight,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          width: 36,
                          height: 36,
                          child: Center(
                            child: Icon(Icons.share,color: icon),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style: pBold),
                          Row(
                            children: [
                              Text('\$$price',style: pBold),
                              Text('/person',style: p4)
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: accentLight,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          width: 80,
                          height: 36,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.star, color: Color(0xFFF3BF2D)),
                              Text(rate)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            )
        ),

      ],
    );
  }
}
// Icon()