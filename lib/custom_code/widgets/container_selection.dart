// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:selectable_container/selectable_container.dart';

class ContainerSelection extends StatefulWidget {
  const ContainerSelection({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ContainerSelectionState createState() => _ContainerSelectionState();
}

class _ContainerSelectionState extends State<ContainerSelection> {
  var _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SelectableContainer(
            selected: _selected,
            onValueChanged: (newValue) {
              setState(() {
                _selected = newValue;
              });
            },
            child: Text('English'),
            padding: 16.0,
          ),
        ],
      ),
    );
  }
}
