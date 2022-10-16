import 'dart:math';

import 'package:ekko/utils/color.dart';
import 'package:flutter/material.dart';

class CustomDonutChart extends StatefulWidget {
  final List<DataItem> dataset;

  const CustomDonutChart({required this.dataset, super.key});
  @override
  State<CustomDonutChart> createState() => _CustomDonutChartState();
}

class _CustomDonutChartState extends State<CustomDonutChart> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return CustomPaint(
      painter: DonutChartPainter(dataset: widget.dataset),
      child: Center(
        child: Text(
          'Points\n15/27',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  final List<DataItem> dataset;
  DonutChartPainter({required this.dataset});

  @override
  void paint(Canvas canvas, Size size) {
    final centreX = size.width / 2;
    final centreY = size.height / 2;
    final c = Offset(centreX, centreY);
    final r = min(centreX, centreY);
    final rect = Rect.fromCircle(center: c, radius: r);
    var startAngle = -pi / 2.0;
    final paint1 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16
      ..color = const Color(0xff32745F).withOpacity(0.3);
    canvas.drawCircle(c, r, paint1);
    var total = 0.0;
    for (var e in dataset) {
      total += e.value;
    }
    var dataSet = List.from(dataset.reversed);
    for (var e in dataSet) {
      final sweepAngle = (total * 360.0 * pi / 180.0);
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 16
        ..strokeCap = StrokeCap.round
        ..color = e.color;
      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      final offset = Offset(
          centreX + r * cos(-pi / 2 + sweepAngle),
          centreY + r * sin(-pi / 2 + sweepAngle));
      canvas.drawCircle(offset, 4, Paint()
        ..color = AppColors.tertiaryColor);
      total -= e.value;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class DataItem {
  final double value;
  final String label;
  final Color color;

  DataItem(this.value, this.label, this.color);
}
