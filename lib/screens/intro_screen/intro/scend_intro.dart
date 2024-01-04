import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class ScendIntroScreen extends StatelessWidget {
  const ScendIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              //color: Colors.amber,
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/bg.jpeg",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                    Image.asset(
                      "assets/images/sat.jpg",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                    Image.asset(
                      "assets/images/bg.jpeg",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 400,

                    // aspectRatio: 2,
                    aspectRatio: 16 / 16,
                    //viewportFraction: ,
                    initialPage: 0,
                    // enableInfiniteScroll: true,
                    // reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    //enlargeCenterPage: true,
                    //enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpeg"),
                  fit: BoxFit.cover,
                )),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      // BackdropFilter(
                      //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      //   child: Container(),
                      // ),
                      Stack(
                        children: [
                          Opacity(
                            opacity: 0.80,
                            child: Container(
                              color: const Color.fromARGB(255, 207, 205, 205),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView(
                                  children: const [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Text(
                                        "এক নজরে সাতক্ষীরা জেলা",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        """সীমানা পূর্বে খুলনা জেলা, উত্তরে যশোর জেলা, পশ্চিমে চব্বিশ পরগনা (ভারত) জেলার বশির হাট মহকুমা এবং দক্ষিণ বঙ্গোপসাগর.আয়তন  সাতক্ষীরা জেলা উত্তর দক্ষিণে লম্বা। জেলার আয়তন ৩,৮৫৮.৩৩ বর্গ কি:মি:। তন্মধ্যে দক্ষিণাংশের এক-তৃতীয়াংশ ভূমি সুন্দরবনের অন্তর্ভুক্ত। সাতক্ষীরার অংশে সুন্দরবনের অংশ ১৪৪৫.১৮ বর্গ কি:মি:। ভৌগলিক অবস্থা জেলার উত্তরগোলার্ধে নিরক্ষরেখা এবং কর্কটক্রান্তির মধ্যবর্তী ২১°৪৮´থেকে ২২°৫৮´উত্তর অক্ষাংশে এবং৮৮°৫৫´থেকে৮৯°৫৫´পূর্বদ্রাঘিমাংশে এবং সমুদ্রপৃষ্ঠ থেকে আনুমানিক গড়ে ১৬´উচ্চে  অবস্থিত।""",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // CustomLenguageIntro(),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
