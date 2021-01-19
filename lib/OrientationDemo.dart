import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrientationDemo extends StatefulWidget {
  @override
  _OrientationDemoState createState() => _OrientationDemoState();
}

class _OrientationDemoState extends State<OrientationDemo> {
  var name = "Deven Joshi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // OrientationBuilder is a widget which builds a layout or part of a layout on an orientation change.
      body: OrientationBuilder(
        builder: (context, orientation) {
          // The Builder function is called when the orientation changes.
          // The possible values being Orientation.portrait or Orientation.landscape.
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  Widget _buildVerticalLayout() {
    // We can also check the orientation at any point in the
    // code(inside or outside the OrientationBuilder) using.
    print(MediaQuery.of(context).orientation);

    return Center(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Icon(
              Icons.account_circle,
              size: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 32.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalLayout() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Icon(
                    Icons.account_circle,
                    size: 100.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 32.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(6, (n) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 32.0),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
