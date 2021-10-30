import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_comments_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_sb_requested_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_sber_requested_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_votes_view.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Notifications", style: TextStyle(color: Colors.black)),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                  child: Row(
                children: [
                  SvgPicture.asset("assets/icons/fi-rr-thumbs-down.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("assets/icons/fi-rr-thumbs-up.svg"),
                ],
              )),
              Tab(
                child: SvgPicture.asset("assets/icons/fi-rr-comment-alt.svg"),
              ),
              Tab(
                child: SvgPicture.asset("assets/icons/fi-rr-user-add.svg"),
              ),
              Tab(
                child: SvgPicture.asset("assets/icons/fi-rr-user-time.svg"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          VotesView(),
          NCommentsView(),
          // when requested to client
          NFSubscriberRequestedView(),
          // when current client requested to other client
          NFSubscribeRequestedView(),
        ]),
      ),
    );
  }
}
