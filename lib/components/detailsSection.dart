import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class DetailsSection extends StatelessWidget {
  final String image;
  const DetailsSection({
    required this.image,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About',style: heading1),
          SizedBox(height: small),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',style: p1,),
          SizedBox(height: medium),
          Text('Gallery',style: heading1),
        ],
      ),
    );
  }
}
