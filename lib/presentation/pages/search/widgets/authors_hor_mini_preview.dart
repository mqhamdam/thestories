import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class AuthorsHorizontalMiniPreview extends StatelessWidget {
  const AuthorsHorizontalMiniPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const Text(
                  'Recommended Authors',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/fi-rr-angle-right.svg',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(1),

                //width: 200,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(
                          maxRadius: 33,
                          backgroundImage: NetworkImage(avatarURLTemp),
                        ),
                        const Divider(),
                        const Text('Name'),
                        const Text('@username'),
                        const Text('Reputation'),
                        const Text('Stories'),
                        const Spacer(),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Subscribe',
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
    );
  }
}
