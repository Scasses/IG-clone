import 'package:flutter/material.dart';

class LikeAnimation extends StatefulWidget {
  final Widget child;
  final bool isAnimatiing;
  final Duration duration;
  final VoidCallback onEnd;
  final bool smallLike;
  const LikeAnimation(
      {Key? key,
      required this.child,
      required this.isAnimatiing,
      required this.duration,
      required this.onEnd,
      required this.smallLike})
      : super(key: key);

  @override
  State<LikeAnimation> createState() => _LikeAnimationState();
}

class _LikeAnimationState extends State<LikeAnimation>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds:  widget.duration.inMilliseconds ~/2));
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
