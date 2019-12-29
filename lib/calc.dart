import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  Color.fromARGB(255, 38, 38, 38),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 40, 40, 40),
  Color.fromARGB(255, 32, 32, 32),
);
MyColorTheme zeroButtonDark = MyColorTheme(
  Color.fromARGB(255, 38, 38, 38),
  Color.fromARGB(255, 243, 243, 243),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 32, 32, 32),
  Color.fromARGB(255, 40, 40, 40),
);
MyColorTheme mathButtonDark = MyColorTheme(
  Color.fromARGB(255, 38, 38, 38),
  Color.fromARGB(255, 238, 134, 47),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 40, 40, 40),
  Color.fromARGB(255, 32, 32, 32),
);
MyColorTheme otherButtonDark = MyColorTheme(
  Color.fromARGB(255, 38, 38, 38),
  Color.fromARGB(255, 166, 166, 166),
  Color.fromARGB(255, 48, 48, 48),
  Color.fromARGB(255, 40, 40, 40),
  Color.fromARGB(255, 32, 32, 32),
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDark;

  _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDark = prefs.getBool('isDark');
    });
  }

  @override
  void initState() {
    super.initState();
    isDark = false;
    _loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: (isDark == false)
            ? Color.fromARGB(255, 238, 238, 238)
            : Color.fromARGB(255, 38, 38, 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onLongPress: () async {
                setState(() {
                  isDark = !isDark;
                });
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('isDark', isDark);
              },
              child: Padding(
                padding: EdgeInsets.only(top: 96, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "3,780",
                      style: TextStyle(
                        fontSize: 96,
                        fontFamily: "Montserrat",
                        color: (isDark == false)
                            ? Color.fromARGB(255, 48, 48, 48)
                            : Color.fromARGB(255, 238, 238, 238),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MyButton(
                          "AC",
                          (isDark == false)
                              ? otherButtonLight
                              : otherButtonDark,
                          key: ObjectKey("AC$isDark"),
                        ),
                        MyButton(
                          "+/-",
                          (isDark == false)
                              ? otherButtonLight
                              : otherButtonDark,
                          key: ObjectKey("+/-$isDark"),
                        ),
                        MyButton(
                          "%",
                          (isDark == false)
                              ? otherButtonLight
                              : otherButtonDark,
                          key: ObjectKey("%$isDark"),
                        ),
                        MyButton(
                          "÷",
                          (isDark == false) ? mathButtonLight : mathButtonDark,
                          key: ObjectKey("÷$isDark"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MyButton(
                          "7",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                          key: ObjectKey("7$isDark"),
                        ),
                        MyButton(
                          "8",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                          key: ObjectKey("8$isDark"),
                        ),
                        MyButton(
                          "9",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                          key: ObjectKey("9$isDark"),
                        ),
                        MyButton(
                          "×",
                          (isDark == false) ? mathButtonLight : mathButtonDark,
                          key: ObjectKey("x$isDark"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MyButton(
                          "4",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                                                        key: ObjectKey("4$isDark"),

                        ),
                        MyButton(
                          "5",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                                                        key: ObjectKey("5$isDark"),

                        ),
                        MyButton(
                          "6",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                                                        key: ObjectKey("6$isDark"),

                        ),
                        MyButton(
                          "−",
                          (isDark == false) ? mathButtonLight : mathButtonDark,
                                                    key: ObjectKey("−$isDark"),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MyButton(
                          "1",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                                                        key: ObjectKey("1$isDark"),

                        ),
                        MyButton(
                          "2",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                              key: ObjectKey("2$isDark"),
                        ),
                        MyButton(
                          "3",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                              key: ObjectKey("3$isDark"),
                        ),
                        MyButton(
                          "+",
                          (isDark == false) ? mathButtonLight : mathButtonDark,
                          key: ObjectKey("+$isDark"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        MyLongButton(
                          "0",
                          (isDark == false) ? zeroButtonLight : zeroButtonDark,
                          key: ObjectKey("0$isDark"),
                        ),
                        MyButton(
                          ".",
                          (isDark == false)
                              ? numberButtonLight
                              : numberButtonDark,
                              key: ObjectKey(".$isDark"),
                        ),
                        MyButton(
                          "=",
                          (isDark == false) ? mathButtonLight : mathButtonDark,
                          key: ObjectKey("=$isDark"),
                        ),
                      ],
                    ),
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
