// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mini_app_cubit/app/modules/welcome/presentation/widgets/button.dart';
import 'package:mini_app_cubit/app/modules/welcome/presentation/widgets/text.dart';

class WelcomePageView extends StatefulWidget {
  const WelcomePageView({Key? key}) : super(key: key);

  @override
  State<WelcomePageView> createState() => _WelcomePageViewState();
}

class _WelcomePageViewState extends State<WelcomePageView> {
  List welcome_pict = [
    "/welcome-one.png",
    "/welcome-two.png",
    "/welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: welcome_pict.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets" + welcome_pict[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WelcomeTextWidget(
                          text: "Trips",
                          size: 30,
                          bold: FontWeight.bold,
                        ),
                        WelcomeTextWidget(
                          text: "Mountain",
                          size: 25,
                          bold: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          width: 250,
                          child: WelcomeTextWidget(
                            text:
                                "Mountain hikes give you an increadible sense of freedom along with endurance test",
                            size: 18,
                            bold: FontWeight.w100,
                            color: Colors.grey.withOpacity(0.9),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        ResponsiveButtonWidget(isResponsive: true),
                      ],
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (indexDots) {
                          return Container(
                            width: 8,
                            margin: const EdgeInsets.only(bottom: 5),
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                              color: index == indexDots
                                  ? Color(0xFF515DB0)
                                  : Color(0xFF515DB0).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
