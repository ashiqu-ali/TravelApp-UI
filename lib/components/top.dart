import 'package:flutter/cupertino.dart';
import 'package:travel_app/components/card_top.dart';
import 'package:travel_app/models/destination.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Destination> destinations= [
      Destination('assets/images/square-3.jpg', 'Telega', '80', 'Bandung, Japan','4.9'),
      Destination('assets/images/square-4.jpg', 'Sungai', '100', 'Ciliwung','4.1'),
      Destination('assets/images/square-2.jpg', 'Capura', '100', 'Tokyo city, Japan','4.2'),

    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          var dest = destinations[index];
          return CardTop(image: dest.image, name: dest.name, location: dest.location,price: dest.price,rate: dest.rate,);
        },

      ),
    );
  }
}
