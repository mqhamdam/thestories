import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_comments_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_general_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_sb_requested_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_sber_requested_view.dart';
import 'package:thestories/presentation/pages/notifications/view/notification_votes_view.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Notifications',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                child: SvgPicture.asset('assets/icons/fi-rr-bell-ring.svg'),
              ),
              Tab(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/fi-rr-thumbs-down.svg'),
                    const SizedBox(
                      width: 2,
                    ),
                    SvgPicture.asset('assets/icons/fi-rr-thumbs-up.svg'),
                  ],
                ),
              ),
              Tab(
                child: SvgPicture.asset('assets/icons/fi-rr-comment-alt.svg'),
              ),
              Tab(
                child: SvgPicture.asset('assets/icons/fi-rr-user-add.svg'),
              ),
              Tab(
                child: SvgPicture.asset('assets/icons/fi-rr-user-time.svg'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationGeneralView(),
            VotesView(),
            NCommentsView(),
            // when requested to client
            NFSubscriberRequestedView(),
            // when current client requested to other client
            NFSubscribeRequestedView(),
          ],
        ),
      ),
    );
  }
}
