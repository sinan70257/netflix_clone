import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home_page/widgets/custon_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';

class EveronesWatchingWidget extends StatelessWidget {
  const EveronesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          "Friends",
          style: TextStyle(
              fontSize: 20, color: kwhitecolor, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20- something pals as they navigate the pitfalls of woek, life and love in 1990 Manhattan.",
          style: TextStyle(
            fontSize: 16,
            color: kGreyColor,
          ),
        ),
        khHeight50,
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtom(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              fontSize: 16,
            ),
            kwidth,
            CustomButtom(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              fontSize: 16,
            ),
            kwidth,
            CustomButtom(
              icon: Icons.play_arrow_rounded,
              title: "Play",
              iconSize: 25,
              fontSize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
