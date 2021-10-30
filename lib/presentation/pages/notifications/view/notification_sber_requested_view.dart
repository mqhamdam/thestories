import 'package:flutter/material.dart';

class NFSubscriberRequestedView extends StatelessWidget {
  const NFSubscriberRequestedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 5 == 0) {
          return Card(
            child: Text(" Date "),
          );
        } else {
          return Container();
        }
      },
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name"),
                        Text("@username"),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        )),
                      ),
                      onPressed: () {},
                      child: Text("Accept"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 50,
    );
  }
}
