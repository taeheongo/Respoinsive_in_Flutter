import 'package:flutter/material.dart';
import 'package:flutter_adaptive_layouts/DetailPage.dart';
import 'package:flutter_adaptive_layouts/DetailWidget.dart';
import 'package:flutter_adaptive_layouts/ListWidget.dart';

class MasterDetailPage extends StatefulWidget {
  @override
  _MasterDetailPageState createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var selectedValue = 0;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        // If you want to have a design for tabls only, instead of checking for
        // width from MediaQuery
        // Size size = MediaQuery.of(context).size;
        // double width = size.width > size.height ? size.height : size.width;

        // if (width > 600) {
        //   // Do something for tablets here
        // } else {
        //   // Do something for phones
        // }

        return Row(children: <Widget>[
          // We use the Expanded widgets around it to fill the screen or divde the screen
          // in case of a larger screen.
          Expanded(
            child: ListWidget(10, (value) {
              if (isLargeScreen) {
                selectedValue = value;
                setState(() {});
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(value);
                  },
                ));
              }
            }),
          ),
          isLargeScreen
              ? Expanded(child: DetailWidget(selectedValue))
              : Container(),
        ]);
      }),
    );
  }
}
