import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search_screen/widgets/title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/1Hie7gCDsvt7wtPRuUAk4ZzaoQa.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kheight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            shrinkWrap: true,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageurl), fit: BoxFit.cover)),
    );
  }
}
