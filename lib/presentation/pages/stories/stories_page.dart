import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/pages/stories/widgets/special_group_preview.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        displacement: 120.0,
        onRefresh: () async {},
        child: CustomScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33)),
              ),
              floating: true,
              backgroundColor: Colors.white,
              title: Text("The Stories",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "IMFellEnglish",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 3,
                  )),
              actions: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.teal[50]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              bottomRight: Radius.circular(33)),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/fi-rr-film.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("SERIES", style: TextStyle(color: Colors.black)),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                            "assets/icons/fi-rr-angle-double-small-right.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 190,
                    child: GridView.builder(
                        physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.only(
                            top: 12, bottom: 20, left: 15, right: 15),
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          //childAspectRatio: 1 / 1,
                          //   mainAxisExtent: 10,
                        ),
                        itemBuilder: (context, index) {
                          if (index % 2 == 0) {
                            return Transform.scale(
                              scale: 1.5,
                              child: Card(
                                elevation: 5,
                                shape: CircleBorder(),
                                child: InkWell(
                                  customBorder: new CircleBorder(),
                                  onTap: () {
                                    print("Print");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      avatar_url_template,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Container();
                          }
                        }),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-world.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Public Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        for (int i = 0; i < 10; i++) StoryMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-shield.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Private Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        for (int i = 0; i < 10; i++) StoryMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-star.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Special Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        for (int i = 0; i < 10; i++) SpecialGroupMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
