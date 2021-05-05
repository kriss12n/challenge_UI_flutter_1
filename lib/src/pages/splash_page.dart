import 'package:flutter/material.dart';
import 'package:headphones/src/widgets/logo.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 120,
          top: 220,
          child: Container(
            child: Image(
              image: AssetImage("assets/img/fondo.png"),
              height: 600,
            ),
          ),
        ),
        Container(
          color: Color(0xff060DD9).withOpacity(0.74),
        ),
        SafeArea(
          child: _splash(),
        )
      ],
    ));
  }
}

class _splash extends StatelessWidget {
  const _splash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Logo(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Search for wireless headphones",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Click to access",
                      style: TextStyle(
                          color: Color(0xff060DD9),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                        size: 18, color: Color(0xff060DD9))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
