import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    required this.imgUrl,
    required this.radius,
    Key? key,
  }) : super(key: key);
  final String imgUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(imgUrl),
          ),
          Align(
            child: CircleAvatar(
              radius: radius / 3 + 1,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: radius / 3,
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
    );
  }
}
