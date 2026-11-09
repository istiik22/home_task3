import 'package:flutter/material.dart';
import '../data/global_data.dart';
import '../models/bottom_bar_item.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  BottomBarWidgetState createState() => BottomBarWidgetState();
}

class BottomBarWidgetState extends State<BottomBarWidget> {

  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          barItems.length,
          (index) {
              
            var barItem = barItems[index];

            return GestureDetector(
              onTap: () {
                setState(() {
                  barItems.forEach((element) {
                      element.isSelected = barItem == element;
                  });
                });
              },
              child: Column(
                children: [
                  Icon(barItem.icon, color: barItem.isSelected! 
                    ? mainThemeColor : Colors.grey),
                  Text(barItem.label!, style: TextStyle(
                    color: (barItem.isSelected! ? mainThemeColor : Colors.grey), 
                    fontSize: 11
                  ))
                ]
              )
            );
        })
      )
    );
  }
}