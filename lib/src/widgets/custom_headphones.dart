import 'package:flutter/material.dart';
import 'package:headphones/src/widgets/custom_title.dart';

class CustomHeadphones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTittle(text: "Beats Products"),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: GridView(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 30.0,
                    childAspectRatio: 1),
                children: [
                  _CustomCardHeadphone(),
                  _CustomCardHeadphone(),
                  _CustomCardHeadphone(),
                  _CustomCardHeadphone(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomCardHeadphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: double.infinity,
              child: CustomPaint(
                painter: _TrianglePainter(),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Transform.rotate(
                    angle: 12,
                    child: Image(
                      image: AssetImage("assets/img/headphone-4.png"),
                      height: 120,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Beat Solo3",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w100)),
                Text("\$249.6",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 15, color: Colors.yellow),
                    Icon(Icons.star, size: 15, color: Colors.yellow),
                    Icon(Icons.star, size: 15, color: Colors.yellow),
                    Icon(Icons.star, size: 15, color: Colors.yellow),
                    Icon(
                      Icons.star_border,
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff060DD9).withOpacity(0.1);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();
    path.moveTo(size.width * 0.9, size.height * 0.1);
    path.lineTo(size.width * 0.1, size.height * 0.15);
    path.lineTo(size.width * 0.55, size.height * 0.65);
    path.lineTo(size.width * 0.9, size.height * 0.1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_TrianglePainter oldDelegate) => true;
}
