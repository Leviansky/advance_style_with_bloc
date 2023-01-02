import 'package:flutter/material.dart';

class places_content extends StatelessWidget {
  const places_content({
    Key? key,
    required this.home_pict,
  }) : super(key: key);

  final List home_pict;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: home_pict.length,
      itemBuilder: (context, index) {
        return Container(
          height: 300,
          width: 200,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                "assets/mountain.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
