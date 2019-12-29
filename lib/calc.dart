import 'package:flutter/material.dart';
import 'custom_button.dart';

// Light Theme Buttons
MyColorTheme numberButtonLight = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 220, 220, 220),
);
MyColorTheme zeroButtonLight = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 240, 240, 240),
  Color.fromARGB(255, 160, 160, 160),
  Color.fromARGB(255, 243, 243, 243),
);
MyColorTheme mathButtonLight = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 134, 47),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 220, 220, 220),
);
MyColorTheme otherButtonLight = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 166, 166, 166),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 220, 220, 220),
);

// Dark Theme Buttons
MyColorTheme numberButtonDark = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 243, 243, 243),
  Colors.white70,
  Color.fromARGB(255, 220, 220, 220),
);
MyColorTheme zeroButtonDark = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 220, 220, 220),
  Color.fromARGB(255, 255, 255, 255),
);
MyColorTheme mathButtonDark = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 134, 47),
  Color.fromARGB(255, 48, 48, 48),
  Colors.white70,
  Color.fromARGB(255, 48, 48, 48),
);
MyColorTheme otherButtonDark = MyColorTheme(
  Color.fromARGB(255, 238, 238, 238),
  Color.fromARGB(255, 238, 134, 47),
  Color.fromARGB(255, 243, 243, 243),
  Colors.white70,
  Color.fromARGB(255, 166, 166, 166),
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 238, 238, 238),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 96, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("3,780", style: TextStyle(fontSize: 96, fontFamily: "Montserrat"),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MyButton(
                          "AC",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? otherButtonLight
                              : otherButtonDark),
                      MyButton(
                          "+/-",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? otherButtonLight
                              : otherButtonDark),
                      MyButton(
                          "%",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? otherButtonLight
                              : otherButtonDark),
                      MyButton(
                          "÷",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? mathButtonLight
                              : mathButtonDark),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MyButton(
                          "7",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "8",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "9",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "×",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? mathButtonLight
                              : mathButtonDark),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MyButton(
                          "4",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "5",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "6",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "−",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? mathButtonLight
                              : mathButtonDark),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MyButton(
                          "1",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "2",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "3",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "+",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? mathButtonLight
                              : mathButtonDark),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      MyLongButton(
                          "0",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? zeroButtonLight
                              : zeroButtonDark),
                      MyButton(
                          ".",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? numberButtonLight
                              : numberButtonDark),
                      MyButton(
                          "=",
                          (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? mathButtonLight
                              : mathButtonDark),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
