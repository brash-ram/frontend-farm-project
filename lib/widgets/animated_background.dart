import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({ super.key, });

  @override
  Widget build(BuildContext context) =>
    LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: constraints.maxHeight * 2/3,
              child: AnimatedWave(
                color: Theme.of(context).colorScheme.primary,
                height: constraints.maxHeight * 1/7,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: constraints.maxHeight * 2/4,
              child: AnimatedWave(
                color: Theme.of(context).colorScheme.secondary,
                offset: 2,
                factor: 1.4,
                height: constraints.maxHeight * 1/17,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: constraints.maxHeight * 2/5,
              child: AnimatedWave(
                color: Theme.of(context).colorScheme.tertiary,
                offset: 5,
                factor: 2,
                height: constraints.maxHeight * 1/27,
              ),
            ),
          ),
        ],
      ),
    );
}


class AnimatedWave extends StatefulWidget {
  const AnimatedWave({
    required this.height,
    required this.color,
    this.factor = 1,
    this.offset = 0,
    super.key,
  });

  final Color color;
  final double height;
  final double factor;
  final double offset;

  @override
  State<AnimatedWave> createState() => _AnimatedWaveState();
}

class _AnimatedWaveState extends State<AnimatedWave> with SingleTickerProviderStateMixin {
  final duration = const Duration(seconds: 15);
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: duration,
  );

  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  @override
  void didUpdateWidget(covariant AnimatedWave oldWidget) {
    super.didUpdateWidget(oldWidget);
    initAnimation();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void initAnimation() {
    animation = Tween(
      begin: (widget.offset + 0.0) * widget.factor,
      end: (widget.offset + 10.0) * widget.factor,
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: controller,
      ),
    );
    controller.repeat(
      reverse: true,
    );
  }

  @override
  Widget build(BuildContext context) =>
    AnimatedBuilder(
      animation: animation,
      // builder: (context, child) => Text(animation.value.toString()),
      builder: (context, child) => CustomPaint(
        foregroundPainter: CurvePainter(
          height: widget.height,
          color: widget.color,
          value: animation.value,
        ),
      ),
    );
}

class CurvePainter extends CustomPainter {
  const CurvePainter({
    required this.color,
    required this.value,
    required this.height,
  });

  final Color color;
  final double value;
  final double height;

  @override
  void paint(Canvas canvas, Size size) {
    final waveSize = Size(
      size.width,
      height,
    );
    final white = Paint()
      ..color = color.withAlpha(15);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = waveSize.height * (0.5 + 0.4 * y1);
    final controlPointY = waveSize.height * (0.5 + 0.4 * y2);
    final endPointY = waveSize.height * (0.5 + 0.4 * y3);

    path..moveTo(size.width * 0, startPointY)
    ..quadraticBezierTo(
      waveSize.width * 0.5,
      controlPointY,
      waveSize.width,
      endPointY,
    )
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height)
    ..close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
