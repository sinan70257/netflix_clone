import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search_screen/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/mzFlwK2WN5KGCgEc4ExJmooJy97.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemTile(),
            separatorBuilder: (context, index) => kheight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 65,
          width: ScreenWidth * 0.35,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          )),
        ),
        const Expanded(
          child: Text(
            " Movie Name",
            style: TextStyle(
              color: kwhitecolor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 28,
          child: CircleAvatar(
            backgroundColor: kblackColor,
            radius: 26,
            child: Icon(
              CupertinoIcons.play_fill,
              size: 30,
              color: kwhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
