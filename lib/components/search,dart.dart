import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
              autocorrect: false,
              enableSuggestions: false,
              cursorColor: accent,
              style: p1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 22,color: text,),
                hintText: 'Search destination',
                hintStyle: p1,
                fillColor: white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: small),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                )
              ),
            )
        ),
        SizedBox(width: small),
        Container(
          decoration: BoxDecoration(
            color: accent,
            borderRadius: BorderRadius.circular(12)
          ),
          width: large,
          height: large,
          child: Icon(Icons.swap_horiz,color: white),
        )
      ],
    );
  }
}
