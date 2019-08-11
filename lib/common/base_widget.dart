import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  final Widget child;
  final Function() initState;
  final Function() dispose;

  const BaseWidget({
    Key key,
    @required this.child,
    this.initState,
    this.dispose,
  }) : super(key: key);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  void initState() {
    widget.initState();
    super.initState();
  }

  @override
  void dispose() {
    widget.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
