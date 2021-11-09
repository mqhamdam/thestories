import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class ReadingBody extends StatelessWidget {
  ReadingBody({Key? key}) : super(key: key);
  final List<int> body = List.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kToolbarHeight + 15),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Text("Header",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ))
            ])),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (body[index].isEven) {
                  return Text(story_body_dummy_data);
                } else {
                  return Image.network(
                    cover_for_story_template,
                    fit: BoxFit.fitWidth,
                  );
                }
              },
              childCount: body.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/fi-rr-hastag.svg",
                        height: 15,
                        color: Colors.black87,
                      ),
                      for (var item
                          in List.generate(20, (index) => "Text$index"))
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33)),
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              item,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  height: 200,
                  width: 300,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.network(
                              cover_for_stories_template,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    "This is Series Title",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Divider(),
                                Text(
                                  story_body_dummy_data,
                                  maxLines: 4,
                                ),
                                Spacer(),
                                Text("Ep: 42"),
                                Text("Likes"),
                                Text("By @username / anon"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/icons/fi-rr-angle-double-small-left.svg",
                            color: Colors.black),
                        label: Text("Previous",
                            style: TextStyle(color: Colors.black)),
                      ),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon:
                            Text("Next", style: TextStyle(color: Colors.black)),
                        label: SvgPicture.asset(
                            "assets/icons/fi-rr-angle-double-small-right.svg",
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
