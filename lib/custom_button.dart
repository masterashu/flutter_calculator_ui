import 'package:flutter/material.dart';

class MyColorTheme {
  Color background, text, border, shadow1, shadow2;

  MyColorTheme(
      this.background, this.text, this.border, this.shadow1, this.shadow2);
}

class MyButton extends StatefulWidget {
  final MyColorTheme theme;
  final String text;
  MyButton(this.text, this.theme, {Key key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool pressed;
  BoxDecoration normalDecoration, pressedDecoration;

  @override
  void initState() {
    super.initState();
    this.pressed = false;
    this.normalDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(120),
      color: widget.theme.background,
      border: Border.all(color: widget.theme.border, width: 1),
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          spreadRadius: 2,
          offset: Offset(2, 2),
          color: widget.theme.shadow2,
        ),
        BoxShadow(
          blurRadius: 4,
          spreadRadius: 2,
          offset: Offset(-2, -2),
          color: widget.theme.shadow1,
        ),
      ],
    );
    this.pressedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(120),
      color: Colors.transparent,
      border: Border.all(color: widget.theme.border, width: 1),
      boxShadow: [
        BoxShadow(
          spreadRadius: -2,
          blurRadius: 2,
          color: widget.theme.shadow2,
          offset: Offset.zero,
        ),
        BoxShadow(
          spreadRadius: 0,
          blurRadius: 10,
          offset: Offset(2, 2),
          color: widget.theme.background,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (a) {
        print("pressed");
        setState(() {
          pressed = true;
        });
      },
      onTapUp: (a) {
        print("released");
        setState(() {
          pressed = false;
        });
      },
      child: Container(
        decoration: (pressed) ? this.pressedDecoration : this.normalDecoration,
        width: 80,
        height: 80,
        margin: EdgeInsets.all(5),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 36,
              color: widget.theme.text,
            ),
          ),
        ),
      ),
    );
  }
}

class MyLongButton extends StatefulWidget {
  final MyColorTheme theme;
  final String text;
  MyLongButton(this.text, this.theme, {Key key}) : super(key: key);

  @override
  _MyLongButtonState createState() => _MyLongButtonState();
}

class _MyLongButtonState extends State<MyLongButton> {
  bool pressed;
  BoxDecoration normalDecoration, pressedDecoration;

  void initState() {
    super.initState();
    this.pressed = false;
    this.normalDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(120),
      color: widget.theme.background,
      border: Border.all(color: widget.theme.border, width: 1),
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          spreadRadius: 2,
          offset: Offset(2, 2),
          color: widget.theme.shadow2,
        ),
        BoxShadow(
          blurRadius: 4,
          spreadRadius: 2,
          offset: Offset(-2, -2),
          color: widget.theme.shadow1,
        ),
      ],
    );
    this.pressedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(120),
      color: Colors.transparent,
      border: Border.all(color: widget.theme.border, width: 1),
      boxShadow: [
        BoxShadow(
          spreadRadius: -2,
          blurRadius: 4,
          color: widget.theme.shadow2,
          offset: Offset.zero,
        ),
        BoxShadow(
          spreadRadius: -1,
          blurRadius: 10,
          offset: Offset(2, 2),
          color: widget.theme.background,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.darken,
        borderRadius: BorderRadius.circular(120),
        color: Colors.transparent,
        border: Border.all(color: widget.theme.border, width: 1),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: widget.theme.shadow1,
            offset: Offset(4, 2),
            spreadRadius: -1,
          ),
          BoxShadow(
            blurRadius: 8,
            offset: Offset(8, 6),
            color: widget.theme.background,
          ),
        ],
      ),
      width: 200,
      height: 80,
      margin: EdgeInsets.all(5),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 28),
        child: Text(
          widget.text,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 32,
            color: widget.theme.text,
          ),
        ),
      ),
    );
  }
}
