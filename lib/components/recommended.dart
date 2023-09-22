import 'package:flutter/cupertino.dart';
import 'package:travel_app/components/card_rec.dart';
import 'package:travel_app/models/destination.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Destination> destinations= [
      Destination('assets/images/square-1.jpg', 'Japan Temple', '120', 'Osaka Street, Japan','4.3'),
      Destination('assets/images/square-2.jpg', 'Capura', '100', 'Tokyo city, Japan','4.2'),
      Destination('assets/images/square-3.jpg', 'Telega', '80', 'Bandung, Japan','4.9'),
    ];
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          var dest = destinations[index];
          return CardRecommended(image: dest.image, price: dest.price, name: dest.name, location: dest.location, rate: dest.rate,);
        },
      ),
    );
  }
}
