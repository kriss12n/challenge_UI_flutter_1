import 'package:flutter/material.dart';
import 'package:headphones/src/widgets/custom_appbar.dart';
import 'package:headphones/src/widgets/custom_bottomNavigator.dart';
import 'package:headphones/src/widgets/custom_headphones.dart';
import 'package:headphones/src/widgets/custom_listview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF3F3FF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: [
                    CustomListView(),
                    Expanded(flex: 1000, child: CustomHeadphones()),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
            CustomBottomNavigator()
          ],
        ),
      ),
    );
  }
}
