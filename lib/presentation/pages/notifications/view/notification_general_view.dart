import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationGeneralView extends StatelessWidget {
  const NotificationGeneralView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Congatulations!'),
                subtitle: const Text('You have got a new achievement!'),
                trailing: SvgPicture.asset('assets/icons/fi-rr-trophy.svg'),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index.isEven) {
            return const Text('Date');
          } else {
            return Container();
          }
        },
        itemCount: 50,);
  }
}
