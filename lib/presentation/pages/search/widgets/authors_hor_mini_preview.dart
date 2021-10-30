import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class AuthorsHorizontalMiniPreview extends StatelessWidget {
  const AuthorsHorizontalMiniPreview({Key? key}) : super(key: key);

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
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Recommended Authors",
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
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(3),
                  //width: 200,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            maxRadius: 33,
                            backgroundImage: NetworkImage(avatar_url_template),
                          ),
                          Divider(),
                          Text("Name"),
                          Text("@username"),
                          Text("Reputation"),
                          Text("Stories"),
                          Spacer(),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Subscribe",
                            ),
                          ),
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
