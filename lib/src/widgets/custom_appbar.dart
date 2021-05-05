import 'package:flutter/material.dart';
import 'package:headphones/src/widgets/logo.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.pending_outlined,
              size: 26,
            ),
            Logo(
              color: Color(0xff060DD9),
              sizeIcon: 26,
              sizeText: 18,
            ),
            Icon(Icons.search, size: 26)
          ],
        ),
      ),
    );
  }
}
