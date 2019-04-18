import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'package:flutter_category/category.dart';
// TODO: Define any constants

final _backGroundColor = Colors.blue[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategories(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategories(categories),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(fontSize: 30.0),
      ),
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: _backGroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
