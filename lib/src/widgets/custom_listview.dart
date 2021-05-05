import 'package:flutter/material.dart';
import 'package:headphones/src/widgets/custom_title.dart';

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTittle(text: "Choose Brand"),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 90,
              child: ListView(
                physics: BouncingScrollPhysics(),
                controller: ScrollController(initialScrollOffset: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  _cardListView(active: true, image: "assets/logos/beats.png"),
                  _cardListView(active: false, image: "assets/logos/jbl.png"),
                  _cardListView(active: false, image: "assets/logos/akg.png")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class _cardListView extends StatelessWidget {
  final String image;
  final bool active;
  _cardListView({this.image, this.active});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              if (active)
                BoxShadow(
                    color: Color(0xff060dd9).withOpacity(0.1),
                    blurRadius: 5.0,
                    offset: Offset(0.0, 10.0))
            ]),
        child: Center(
          child: (active
              ? Image(
                  image: AssetImage(image),
                  height: 32,
                )
              : Image(
                  image: AssetImage(image),
                  color: Colors.grey,
                  height: 32,
                )),
        ),
      ),
    );
  }
}
