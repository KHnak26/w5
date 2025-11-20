import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SelectedButton(),
              SizedBox(height: 20),
              SelectedButton(),
              SizedBox(height: 20),
              SelectedButton(),
              SizedBox(height: 20),
              SelectedButton(),
          ],
        ),
      ),
    ));

class SelectedButton extends StatefulWidget {
  const SelectedButton({
    super.key,
  });

  @override
  State<SelectedButton> createState() => _SelectionState();
}

class _SelectionState extends State<SelectedButton> {
  bool isSelect = false;

  String get statusText => isSelect ? "Selected" : "Not Selected";

  Color get textColor => isSelect ? Colors.white : Colors.black;

  Color get backgroundColor => isSelect ? Colors.blue[500]! : Colors.blue[50]!;

  void toggleSelected() {
    setState(() {
      isSelect = !isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 100,
        child: ElevatedButton(
          onPressed: toggleSelected,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
          ),
          child: Center(
            child: Text(
              statusText,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}