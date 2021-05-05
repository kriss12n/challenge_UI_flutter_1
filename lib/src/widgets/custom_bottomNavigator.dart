import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
            child: Theme(
              data: themeData.copyWith(
                canvasColor: Colors.white,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child:
                  BottomNavigationBar(elevation: 0.0, currentIndex: 2, items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded, color: Color(0xff060DD9)),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite,
                        color: Colors.grey.withOpacity(0.7)),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Container(height: 0.0), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_gas_station_rounded,
                        color: Colors.grey.withOpacity(0.7)),
                    label: ""),
                BottomNavigationBarItem(
                    icon:
                        Icon(Icons.person, color: Colors.grey.withOpacity(0.7)),
                    label: "")
              ]),
            ),
          ),
        ),
        Positioned(
            bottom: 30,
            left: size.height * 0.223,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.all(2.5),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff060DD9),
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 32,
                ),
              ),
            ))
      ],
      clipBehavior: Clip.none,
    );
  }
}
