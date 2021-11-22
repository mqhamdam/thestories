import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thestories/data/dummy_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        SliverAppBar(
          pinned: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          stretch: true,
          expandedHeight: 90,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.blurBackground,
              StretchMode.zoomBackground,
            ],
            background: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.network(
                backgroundURLTemp,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(avatarURLTemp),
                            ),
                            Align(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.yellow[900],
                                  child: SvgPicture.asset(
                                    'assets/icons/fi-rr-crown.svg',
                                    height: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Name'),
                          Text('@username'),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
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
                          child: const Text(
                            'subscribe/edit',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Stories\n1k'),
                      Text('Subscribers\n2m'),
                      Text('Subscribed\n59'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-badge.svg',
                              color: Colors.green,
                            ),
                            label: const Text(
                              'Reputation 842k',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-trophy.svg',
                              color: Colors.orange,
                            ),
                            label: const Text(
                              'Achievemnts',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(33),
                          ),
                          child: const Text('Bio maximum lenth 100'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
            ],
          ),
        ),

        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/fi-rr-world.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Public',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              'assets/icons/fi-rr-angle-right.svg',
                            ),
                          ],
                        ),
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
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/fi-rr-shield.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Private',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              'assets/icons/fi-rr-angle-right.svg',
                            ),
                          ],
                        ),
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
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/fi-rr-star.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Special',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              'assets/icons/fi-rr-angle-right.svg',
                            ),
                          ],
                        ),
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
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/fi-rr-film.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'SERIES',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              'assets/icons/fi-rr-angle-right.svg',
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Series: 2342',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Episodes: 2342',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return StorySinglePreview();
        //     },
        //     childCount: 300,
        //   ),
        // ),
      ],
    );
  }
}
