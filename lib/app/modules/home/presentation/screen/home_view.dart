import 'package:flutter/material.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/widgets/text.dart';

import '../widgets/indicator.dart';
import '../widgets/inspirations_content.dart';
import '../widgets/places_content.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with TickerProviderStateMixin {
  List home_pict = [
    "/welcome-one.png",
    "/welcome-two.png",
    "/welcome-three.png",
  ];

  var explore = [
    {
      "nama": "Kayaking",
      "image": "/kayaking.png",
    },
    {
      "nama": "Snorkling",
      "image": "/snorkling.png",
    },
    {
      "nama": "Balloning",
      "image": "/balloning.png",
    },
    {
      "nama": "Hiking",
      "image": "/hiking.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 24.0,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              HomeTextWidget(
                text: "Discover",
                size: 40,
                bold: FontWeight.bold,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircularIndicator(color: Colors.black54, radius: 4),
                tabs: const [
                  Tab(text: "Places"),
                  Tab(text: "Inspirations"),
                  Tab(text: "Emotions"),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    places_content(home_pict: home_pict),
                    insiprations_content(home_pict: home_pict),
                    Container(
                      height: 200,
                      width: double.maxFinite,
                      color: Colors.green,
                      child: Center(
                        child: HomeTextWidget(
                          text: "Ini konten Emotions",
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeTextWidget(
                    text: "Explore More",
                    bold: FontWeight.bold,
                    size: 20,
                    color: Colors.black,
                  ),
                  HomeTextWidget(
                    text: "See all",
                    bold: FontWeight.w400,
                    size: 20,
                    color: Colors.black54,
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 100,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: explore.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets" +
                                  explore[index]['image'].toString()),
                            ),
                          ),
                        ),
                        HomeTextWidget(
                          text: explore[index]['nama'].toString(),
                          size: 12,
                          color: Colors.black54,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
