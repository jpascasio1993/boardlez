import 'package:flutter/material.dart';
import 'package:boardlez/core/ui/widget_view.dart';

class BoardLezTextField extends StatefulWidget {
  final String hintText;
  const BoardLezTextField({super.key, required this.hintText});

  @override
  _BoardLezTextFieldController createState() => _BoardLezTextFieldController();
}

class _BoardLezTextFieldController extends State<BoardLezTextField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => _BoardLezTextFieldView(this);
}

class _BoardLezTextFieldView extends WidgetView<BoardLezTextField, _BoardLezTextFieldController> {
  const _BoardLezTextFieldView(_BoardLezTextFieldController state) : super(state);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText
      ),
      controller: state._textEditingController,
    );
  }
}
