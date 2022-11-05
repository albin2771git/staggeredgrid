import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGrid(),
  ));
}

class StaggeredGrid extends StatelessWidget {
  final List<StaggeredTile> _cardTile = <StaggeredTile>[
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
  ];
  final List<Widget> _listTile = <Widget>[
    BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.green, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.yellow, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.purple, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.redAccent, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.grey, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.lime, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: new StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(4),
        children: _listTile,
      )),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  //const BackGroundTile({super.key});
  final Color? backgroundColor;
  final IconData icondata;
  BackGroundTile({this.backgroundColor, required this.icondata});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(
        icondata,
        color: Colors.white,
      ),
    );
  }
}
