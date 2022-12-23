import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home_page/widgets/background_card.dart';
import 'package:netflix/presentation/home_page/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return SafeArea(
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    MainTitleCard(title: "Released in the past year"),
                    MainTitleCard(title: "Trending Now"),
                    NumberTitleCard(),
                    MainTitleCard(title: "Tense Drama"),
                    MainTitleCard(title: "South Indian Cinema"),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 5000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1200px-Netflix_icon.svg.png",
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: kwhitecolor,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.blue,
                                ),
                                kwidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "TV Shows",
                                  style: kHomeStyle,
                                ),
                                Text(
                                  "Movies",
                                  style: kHomeStyle,
                                ),
                                Text(
                                  "Categories",
                                  style: kHomeStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          ),
        );
      },
    ));
  }
}
