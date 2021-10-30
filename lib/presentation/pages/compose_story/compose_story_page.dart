import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComposeStoryScreen extends StatelessWidget {
  const ComposeStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          icon: SvgPicture.asset("assets/icons/fi-rr-angle-left.svg"),
        ),
        centerTitle: false,
        title: Text(
          "Compose Story",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),
              ),
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/fi-rr-broom.svg"),
              label: Text("Refresh", style: TextStyle(color: Colors.black)),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/fi-rr-info.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Content",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/fi-rr-info.svg"),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            label: Text("Story Title"),
                          ),
                          maxLength: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            label: Text("Story Body"),
                          ),
                          maxLength: 500,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Attach a cover",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Series",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/fi-rr-info.svg"),
                            ),
                          ],
                        ),
                        CheckboxListTile(
                          secondary:
                              SvgPicture.asset("assets/icons/fi-rr-film.svg"),
                          title: Text("Add to Series"),
                          onChanged: (e) {},
                          value: true,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 15),
                              child: SvgPicture.asset(
                                "assets/icons/fi-rr-search-alt.svg",
                              ),
                            ),
                            suffixIconConstraints: BoxConstraints.tightFor(),
                            label: Text("Search series.."),
                          ),
                          maxLength: 500,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Meta Data",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/fi-rr-info.svg"),
                            ),
                          ],
                        ),
                        CheckboxListTile(
                          secondary: SvgPicture.asset(
                              "assets/icons/fi-rr-magic-wand.svg"),
                          title: Text("Fiction"),
                          onChanged: (e) {},
                          value: true,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, right: 5),
                              child: SvgPicture.asset(
                                "assets/icons/fi-rr-hastag.svg",
                              ),
                            ),
                            prefixIconConstraints: BoxConstraints.tightFor(),
                            label: Text("Tags"),
                          ),
                          maxLength: 500,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Visibility",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/fi-rr-info.svg"),
                            ),
                          ],
                        ),
                        CheckboxListTile(
                          secondary: SvgPicture.asset(
                              "assets/icons/fi-rr-incognito.svg"),
                          title: Text("Anonymous"),
                          onChanged: (e) {},
                          value: false,
                        ),
                        Divider(),
                        CheckboxListTile(
                          secondary:
                              SvgPicture.asset("assets/icons/fi-rr-world.svg"),
                          title: Text("Public"),
                          onChanged: (e) {},
                          value: false,
                        ),
                        CheckboxListTile(
                          secondary:
                              SvgPicture.asset("assets/icons/fi-rr-shield.svg"),
                          title: Text("Private"),
                          onChanged: (e) {},
                          value: true,
                        ),
                        CheckboxListTile(
                          secondary:
                              SvgPicture.asset("assets/icons/fi-rr-star.svg"),
                          title: Text("Special"),
                          onChanged: (e) {},
                          value: false,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Comments",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/fi-rr-info.svg"),
                            ),
                          ],
                        ),
                        CheckboxListTile(
                          secondary: SvgPicture.asset(
                              "assets/icons/fi-rr-comments.svg"),
                          title: Text("Allow Comments"),
                          onChanged: (e) {},
                          value: true,
                        ),
                        CheckboxListTile(
                          secondary:
                              SvgPicture.asset("assets/icons/fi-rr-lock.svg"),
                          title: Text("Only Subscribers"),
                          onChanged: (e) {},
                          value: true,
                        ),
                        Row(
                          children: [
                            Text("Allow Read if:"),
                            Expanded(
                              child: Slider(
                                label: "Read",
                                value: 23,
                                onChanged: (e) {},
                                min: 0.0,
                                max: 999,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Allow Write if:"),
                            Expanded(
                              child: Slider(
                                label: "Read",
                                value: 23,
                                onChanged: (e) {},
                                min: 0.0,
                                max: 999,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 15,
                          ),
                          child: Text(
                            "Post",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
