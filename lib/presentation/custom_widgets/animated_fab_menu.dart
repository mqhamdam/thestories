import 'package:flutter/material.dart';

class AnimatedFabMenu extends StatefulWidget {
  const AnimatedFabMenu({
    required this.children,
    Key? key,
  }) : super(key: key);
  final List<Widget> children;
  @override
  _AnimatedFabMenuState createState() => _AnimatedFabMenuState();
}

class _AnimatedFabMenuState extends State<AnimatedFabMenu>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _backgroundColorAnimation;
  late Animation<Color?> _foregroundColorAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _animationController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    _backgroundColorAnimation = ColorTween(
      begin: Colors.white,
      end: Colors.black,
    ).animate(_animationController);
    super.initState();
    _foregroundColorAnimation = ColorTween(
      begin: Colors.black,
      end: Colors.white,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ScaleTransition(
          scale: _animationController,
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [...widget.children.map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: e,
                ),),],
          ),
        ),
        FloatingActionButton(
          heroTag: UniqueKey(),
          foregroundColor: _foregroundColorAnimation.value,
          backgroundColor: _backgroundColorAnimation.value,
          onPressed: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
          ),
        ),
      ],
    );
  }
}
