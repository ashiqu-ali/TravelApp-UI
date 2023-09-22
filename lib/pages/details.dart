import 'package:flutter/material.dart';
import 'package:travel_app/components/card_image.dart';

import '../components/detailsSection.dart';
import '../utils/styles.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String rate;

  const DetailsPage({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            CardImage(image: image, name: name, price: price, rate: rate),
            DetailsSection(image: image),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0), // Circular border radius
          color: accent, // Button color
        ),
        height: 36,
        width: 278,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Book now',
                textAlign: TextAlign.center,
                style: button,
              ),
            ),
            const SizedBox(width: 60),
            Icon(Icons.arrow_forward_rounded,color: white),
            SizedBox(width: small,)
          ],
        ),
        

      ),






    );
  }
}
