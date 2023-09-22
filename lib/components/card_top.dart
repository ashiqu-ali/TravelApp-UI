import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';
import '../pages/details.dart';

class CardTop extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String price;
  final String rate;
  const CardTop({
    required this.image,
    required this.name,
    required this.location,
    required this.price,
    required this.rate,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(

                builder: (context)=> DetailsPage(image: image, name: name, price: price, rate: rate)
            )
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),

        ),
        height: 75,
        width: 172,
        margin: EdgeInsets.only(right: small),
        child: Row(
          children: [
            const SizedBox(width: 6),
            Container(
              decoration: BoxDecoration(
                  color: black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
              ),
              height: 69,
              width: 69,
            ),
            SizedBox(width: xsmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,style: heading4),
                Text(location,style: p3)
              ],
            )
          ],
        ),
      ),
    );
  }
}
