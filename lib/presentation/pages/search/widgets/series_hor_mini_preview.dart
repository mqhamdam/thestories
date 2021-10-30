import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class SeriesHorMiniPreview extends StatelessWidget {
  const SeriesHorMiniPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22))),
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Trending Series",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/icons/fi-rr-angle-right.svg",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(3),
                  height: 150,
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
                );
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
