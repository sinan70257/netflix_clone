import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/comming_soon.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: AppBar(
                title: const Text(
                  "New & Hot",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  Row(
                    children: [
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
                  )
                ],
                bottom: TabBar(
                    labelColor: kblackColor,
                    isScrollable: true,
                    unselectedLabelColor: kwhitecolor,
                    labelStyle: const TextStyle(fontSize: 16),
                    indicator: BoxDecoration(
                        color: kwhitecolor, borderRadius: kRadius30),
                    tabs: const [
                      Tab(
                        text: "🍿Comming soon",
                      ),
                      Tab(
                        text: "👀 Everyone's watching",
                      )
                    ]),
              )),
          body: TabBarView(children: [
            _buildCommingSoon(context),
            _buildEveryonesWatching(),
          ])),
    );
  }

  Widget _buildCommingSoon(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const CommingSoon(),
      itemCount: 10,
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const EveronesWatchingWidget(),
    );
  }
}
