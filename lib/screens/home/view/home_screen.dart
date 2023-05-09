import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drowing app"),
          actions: [
            InkWell(
                onTap: () {
                  Get.toNamed('home');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.forward,size: 50),
                ))
          ],
        ),
        body: CustomPaint(
          size: Size.infinite,
          painter: TringleShape(),
        ),
      ),
    );
  }
}

class TringleShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10
      ..color = Colors.teal.shade900;
    Path p1 = Path();
    p1.moveTo(0, size.height / 2);
    p1.lineTo(size.width / 2, 0);
    p1.lineTo(size.width / 2, size.height);
    p1.lineTo(size.width, size.height / 2);

    canvas.drawPath(p1, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
