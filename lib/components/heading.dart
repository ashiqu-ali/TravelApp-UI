import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: text,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'))
            ),
            width: large,
            height: large,
          ),
          SizedBox(width: small),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome',style: p1),
              Text('TravelApp',style: heading3)
            ],
          )
        ],
      ),
        Icon(Icons.notifications,color: icon, size: 28,)
      ],
    );
  }
}
