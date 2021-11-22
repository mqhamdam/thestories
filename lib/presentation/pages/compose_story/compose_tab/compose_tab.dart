import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class ComposeTab extends StatelessWidget {
  const ComposeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 5.0,
                margin: const EdgeInsets.symmetric(
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
                          const Text(
                            'Content',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-info.svg',
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                          ),
                          label: const Text('Story Title'),
                        ),
                        maxLength: 20,
                      ),
                      TextFormField(
                        initialValue: markdownData,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                          ),
                          label: const Text('Story Body'),
                        ),
                        maxLines: null,
                        maxLength: 2500,
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
                              child: const Text(
                                'Attach a cover',
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
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          const Text(
                            'Series',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-info.svg',
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        secondary:
                            SvgPicture.asset('assets/icons/fi-rr-film.svg'),
                        title: const Text('Add to Series'),
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
                              'assets/icons/fi-rr-search-alt.svg',
                            ),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints.tightFor(),
                          label: const Text('Search series..'),
                        ),
                        maxLength: 500,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5.0,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          const Text(
                            'Meta Data',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-info.svg',
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        secondary: SvgPicture.asset(
                          'assets/icons/fi-rr-magic-wand.svg',
                        ),
                        title: const Text('Fiction'),
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
                              'assets/icons/fi-rr-hastag.svg',
                            ),
                          ),
                          prefixIconConstraints:
                              const BoxConstraints.tightFor(),
                          label: const Text('Tags'),
                        ),
                        maxLength: 500,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5.0,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          const Text(
                            'Visibility',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-info.svg',
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        secondary: SvgPicture.asset(
                          'assets/icons/fi-rr-incognito.svg',
                        ),
                        title: const Text('Anonymous'),
                        onChanged: (e) {},
                        value: false,
                      ),
                      const Divider(),
                      CheckboxListTile(
                        secondary:
                            SvgPicture.asset('assets/icons/fi-rr-world.svg'),
                        title: const Text('Public'),
                        onChanged: (e) {},
                        value: false,
                      ),
                      CheckboxListTile(
                        secondary:
                            SvgPicture.asset('assets/icons/fi-rr-shield.svg'),
                        title: const Text('Private'),
                        onChanged: (e) {},
                        value: true,
                      ),
                      CheckboxListTile(
                        secondary:
                            SvgPicture.asset('assets/icons/fi-rr-star.svg'),
                        title: const Text('Special'),
                        onChanged: (e) {},
                        value: false,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          const Text(
                            'Comments',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/fi-rr-info.svg',
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        secondary: SvgPicture.asset(
                          'assets/icons/fi-rr-comments.svg',
                        ),
                        title: const Text('Allow Comments'),
                        onChanged: (e) {},
                        value: true,
                      ),
                      CheckboxListTile(
                        secondary:
                            SvgPicture.asset('assets/icons/fi-rr-lock.svg'),
                        title: const Text('Only Subscribers'),
                        onChanged: (e) {},
                        value: true,
                      ),
                      Row(
                        children: [
                          const Text('Allow Read if:'),
                          Expanded(
                            child: Slider(
                              label: 'Read',
                              value: 23,
                              onChanged: (e) {},
                              max: 999,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('Allow Write if:'),
                          Expanded(
                            child: Slider(
                              label: 'Read',
                              value: 23,
                              onChanged: (e) {},
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
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 15,
                        ),
                        child: Text(
                          'Post',
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
    );
  }
}
