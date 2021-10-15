import 'dart:math';

import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  final double value;
  const ProgressView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = SweepGradient(
      transform: GradientRotation(pi * 3 / 2),
      colors: [
        Colors.blue.shade300,
        Colors.blue.shade400,
      ],
    );
    return Container(
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: value),
        curve: Curves.easeOut,
        duration: Duration(microseconds: 1000),
        builder: (context, values, child) {
          return CustomPaint(
            painter: ProgressPainter(
              gradient: colors,
              progress: value,
              inactiveColor: Colors.grey.shade300,
            ),
            child: Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final Gradient gradient;
  final Color inactiveColor;
  final double progress;

  ProgressPainter(
      {required this.gradient,
      required this.inactiveColor,
      required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);
    final rect = Rect.fromCircle(center: center, radius: radius * 1.8);

    final inactive = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..color = Colors.grey.shade300;

    final active = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..shader = gradient.createShader(rect);

    final startAngle = pi * 3 / 2;
    final sweepAngle = 50 * progress * pi;

    canvas.drawCircle(center, radius * 1.8, inactive);
    canvas.drawArc(rect, startAngle, sweepAngle, false, active);
  }

  @override
  bool shouldRepaint(ProgressPainter oldDelegate) =>
      gradient != oldDelegate.gradient ||
      inactiveColor != oldDelegate.inactiveColor ||
      progress != oldDelegate.progress;
}
