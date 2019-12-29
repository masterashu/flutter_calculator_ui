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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120),
        color: widget.theme.background,
        border: Border.all(color: widget.theme.border, width: 1),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(4, 4),
            color: widget.theme.shadow2,
          ),
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(-4, -4),
            color: widget.theme.shadow1,
          ),
        ],
      ),
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
            blurRadius: 4,
            color: widget.theme.shadow1,
            offset: Offset(4,2),
            spreadRadius: -2,
          ),
          BoxShadow(
            blurRadius: 10,
            offset: Offset(8,6),
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

class CustomBoxShadow extends BoxShadow {
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(this.blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}
