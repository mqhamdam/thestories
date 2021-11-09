import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomAvatar(
                            imgUrl: avatar_url_template, radius: 30),
                      ),
                      Column(
                        children: [
                          Text("User Name "),
                          Text("Edit user info"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome5.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SwitchListTile.adaptive(
                    secondary: SvgPicture.asset(
                      "assets/icons/fi-rr-moon.svg",
                      color: Colors.black,
                    ),
                    title: Text("Switch to dark mode"),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: [
                        ListTile(
                          onTap: () {
                            AccountSettingsScreenRoute().show(context);
                          },
                          title: Text("Account"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-id-badge.svg",
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          title: Text("Bookmarks"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-bookmark.svg",
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          title: Text("Notifications"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-bell.svg",
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          title: Text("Storage"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-database.svg",
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          title: Text("History"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-time-past.svg",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ).toList(),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: [
                        ListTile(
                          title: Text("Q/A"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-interrogation.svg",
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          title: Text("App Information"),
                          leading: SvgPicture.asset(
                            "assets/icons/fi-rr-info.svg",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ).toList(),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            ListTile(
                              onTap: null,
                              title: Text("Log out"),
                              leading: SvgPicture.asset(
                                "assets/icons/fi-rr-power.svg",
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
