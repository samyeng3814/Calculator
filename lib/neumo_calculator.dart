import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'constants.dart';
import 'neumo_container.dart';
import 'swithMode.dart';

class NeumoCalcy extends StatefulWidget {
  @override
  State<NeumoCalcy> createState() => _NeumoCalcyState();
}

class _NeumoCalcyState extends State<NeumoCalcy> {
  // TextEditingController controller1 =
  //     new TextEditingController(text: userInput);

  bool darkMode = false;
  String userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            18.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          darkMode ? darkMode = false : darkMode = true;
                        });
                      },
                      child: switchMode(
                        darkMode: darkMode,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          answer,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: darkMode ? Colors.white : Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '=',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: darkMode ? Colors.white : Colors.red,
                          ),
                        ),
                        Text(
                          // controller: controller1,
                          userInput,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: darkMode ? Colors.green : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonOval(
                                title: 'sin',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += 'sin';
                                  });
                                },
                              ),
                              buttonOval(
                                title: 'cos',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += 'cos';
                                  });
                                },
                              ),
                              buttonOval(
                                title: 'tan',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += 'tan';
                                  });
                                },
                              ),
                              buttonOval(
                                title: '%',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '%';
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonRounded(
                                title: 'C',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput = '';
                                    answer = '0';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '( ',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '(';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: ' )',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += ')';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '/',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '/';
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonRounded(
                                title: '7',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '7';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '8',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '8';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '9',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '9';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: 'x',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput += 'x';
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonRounded(
                                title: '4',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '4';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '5',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '5';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '6',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '6';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '-',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '-';
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonRounded(
                                title: '1',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '1';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '2',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '2';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '3',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '3';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '+',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '+';
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonRounded(
                                title: '0',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '0';
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '.',
                                buttonTapped: () {
                                  setState(() {
                                    userInput += '.';
                                  });
                                },
                              ),
                              buttonRounded(
                                icon: Icons.backspace_outlined,
                                iconColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    userInput = userInput.substring(
                                        0, userInput.length - 1);
                                  });
                                },
                              ),
                              buttonRounded(
                                title: '=',
                                textColor:
                                    darkMode ? Colors.green : Colors.redAccent,
                                buttonTapped: () {
                                  setState(() {
                                    equalPressed();
                                  });
                                },
                              ),
                            ],
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
      ),
    );
  }

  Widget buttonOval({String? title, buttonTapped}) {
    double padding = 13;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: buttonTapped,
        child: NeumoContainer(
          darkMode: darkMode,
          borderRadius: BorderRadius.circular(50.0),
          padding:
              EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
          child: Container(
            width: padding * 2,
            child: Center(
              child: Text(
                '$title',
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonRounded({
    String? title,
    IconData? icon,
    Color? iconColor,
    Color? textColor,
    buttonTapped,
  }) {
    double padding = 13;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: buttonTapped,
        child: NeumoContainer(
          darkMode: darkMode,
          borderRadius: BorderRadius.circular(35),
          padding: EdgeInsets.all(padding),
          child: Container(
            width: padding * 2,
            height: padding * 2,
            child: Center(
              child: title != null
                  ? Text(
                      '$title',
                      style: TextStyle(
                        color: textColor != null
                            ? textColor
                            : darkMode
                                ? Colors.white
                                : Colors.black,
                        fontSize: 25,
                      ),
                    )
                  : Icon(
                      icon,
                      color: iconColor,
                      size: 25,
                    ),
            ),
          ),
        ),
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');
    try {
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      var eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } catch (e) {
      answer = 'Invalid values';
    }
  }
}
