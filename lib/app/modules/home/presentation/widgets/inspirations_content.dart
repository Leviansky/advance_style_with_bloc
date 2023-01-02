import 'package:flutter/material.dart';

class insiprations_content extends StatelessWidget {
  const insiprations_content({
    Key? key,
    required this.home_pict,
  }) : super(key: key);

  final List home_pict;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: home_pict.length,
      // allowImplicitScrolling: true,
      itemBuilder: (context, index) {
        return Image.asset('assets' + home_pict[index]);
      },
    );
  }
}
