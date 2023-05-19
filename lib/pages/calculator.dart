import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // #view calculate
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.all(1),
              color: Colors.grey.shade800,
              padding: const EdgeInsets.all(20),
              child: Text(
                input,
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(1),
              color: Colors.grey,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // #buton: C
                        MayButtons(
                          onPressed: pressC,
                          name: "C",
                          color: Colors.orange,
                        ),

                        // #buton: delete
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: remov,
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              color: Colors.white,
                              child: const Center(
                                child: Icon(
                                  Icons.backspace_outlined,
                                  size: 40,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // #buton: %
                        MayButtons(
                          onPressed: pressfoyiz,
                          name: "%",
                          color: Colors.orange,
                        ),

                        // #buton: /
                        MayButtons(
                          onPressed: pressBolish,
                          name: "/",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // #buton: 7
                        MayButtons(
                          onPressed: press7,
                          name: "7",
                          color: Colors.black,
                        ),

                        // #buton: 8
                        MayButtons(
                          onPressed: press8,
                          name: "8",
                          color: Colors.black,
                        ),

                        // #buton: 9
                        MayButtons(
                          onPressed: press9,
                          name: "9",
                          color: Colors.black,
                        ),

                        // #buton: *
                        MayButtons(
                          onPressed: pressKopaytrish,
                          name: "*",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // #buton: 4
                        MayButtons(
                          onPressed: press4,
                          name: "4",
                          color: Colors.black,
                        ),

                        // #buton: 5
                        MayButtons(
                          onPressed: press5,
                          name: "5",
                          color: Colors.black,
                        ),

                        // #buton: 6
                        MayButtons(
                          onPressed: press6,
                          name: "6",
                          color: Colors.black,
                        ),

                        // #buton: +
                        MayButtons(
                          onPressed: pressAdd,
                          name: "+",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // #buton: 1
                        MayButtons(
                          onPressed: press1,
                          name: "1",
                          color: Colors.black,
                        ),

                        // #buton: 2
                        MayButtons(
                          onPressed: press2,
                          name: "2",
                          color: Colors.black,
                        ),

                        // #buton: 3
                        MayButtons(
                          onPressed: press3,
                          name: "3",
                          color: Colors.black,
                        ),

                        // #buton: -
                        MayButtons(
                          onPressed: pressSub,
                          name: "-",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // #buton: .
                        MayButtons(
                          onPressed: pressn,
                          name: "",
                          color: Colors.black,
                        ),

                        // #buton: 0
                        MayButtons(
                          onPressed: press0,
                          name: ".",
                          color: Colors.black,
                        ),

                        // #buton:
                        MayButtons(
                          onPressed: press,
                          name: "0",
                          color: Colors.black,
                        ),

                        // #buton: =
                        MayButtons(
                          onPressed: pressAmal,
                          name: "=",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String input = '0';
  RegExp regex = RegExp(r'\d[-+*/%]$');

  void remov() {
    setState(() {
      input = input.substring(0, input.length - 1);
    });
  }

  void pressC() {
    setState(() {
      input = '0';
    });
  }

  void pressfoyiz() {
    setState(() {
      if (regex.hasMatch(input)) {
        input = input.substring(0, input.length - 1);
        input += '%';
      } else if (RegExp(r'\d$').hasMatch(input)) {
        input += '%';
      }
    });
  }

  void pressBolish() {
    setState(() {
      if (regex.hasMatch(input)) {
        input = input.substring(0, input.length - 1);
        input += '/';
      } else if (RegExp(r'\d$').hasMatch(input)) {
        input += '/';
      }
    });
  }

  void pressKopaytrish() {
    setState(() {
      if (regex.hasMatch(input)) {
        input = input.substring(0, input.length - 1);
        input += '*';
      } else if (RegExp(r'\d$').hasMatch(input)) {
        input += '*';
      }
    });
  }

  void pressAdd() {
    setState(() {
      if (regex.hasMatch(input)) {
        input = input.substring(0, input.length - 1);
        input += '+';
      } else if (RegExp(r'\d$').hasMatch(input)) {
        input += '+';
      }
    });
  }

  void pressSub() {
    setState(() {
      if (regex.hasMatch(input)) {
        input = input.substring(0, input.length - 1);
        input += '-';
      } else if (RegExp(r'\d$').hasMatch(input)) {
        input += '-';
      }
    });
  }

  void press() {
    setState(() {});
  }

  void press1() {
    setState(() {
      if (input == '0') {
        input = '1';
      } else {
        input += '1';
      }
    });
  }

  void press2() {
    setState(() {
      if (input == '0') {
        input = '2';
      } else {
        input += '2';
      }
    });
  }

  void press3() {
    setState(() {
      if (input == '0') {
        input = '3';
      } else {
        input += '3';
      }
    });
  }

  void press4() {
    setState(() {
      if (input == '0') {
        input = '4';
      } else {
        input += '4';
      }
    });
  }

  void press5() {
    setState(() {
      if (input == '0') {
        input = '5';
      } else {
        input += '5';
      }
    });
  }

  void press6() {
    setState(() {
      if (input == '0') {
        input = '6';
      } else {
        input += '6';
      }
    });
  }

  void press7() {
    setState(() {
      if (input == '0') {
        input = '7';
      } else {
        input += '7';
      }
    });
  }

  void press8() {
    setState(() {
      if (input == '0') {
        input = '8';
      } else {
        input += '8';
      }
    });
  }

  void press9() {
    setState(() {
      if (input == '0') {
        input = '9';
      } else {
        input += '9';
      }
    });
  }

  void pressn() {
    setState(() {
      if (input == '0') {
        input = '.';
      } else {
        input += '.';
      }
    });
  }

  void press0() {
    setState(() {
      if (input == '0') {
      } else {
        input += '0';
      }
    });
  }

  void pressAmal() {
    setState(() {
      ArithmeticCalculator math = ArithmeticCalculator();
      input = math.calculate(input)!;
    });
  }
}

class MayButtons extends StatelessWidget {
  final void Function() onPressed;
  final String name;
  final Color color;

  const MayButtons(
      {Key? key,
      required this.onPressed,
      required this.name,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.all(2),
          color: Colors.white,
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 40,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/////

class ArithmeticCalculator extends ArithmeticCalculatorI {
  const ArithmeticCalculator();

  String? calculate(String text) {
    if (RegExp(r'[A-Za-z]').hasMatch(text)) return null;

    return f('+', f('-', f('*', f('/', f('%', text)))));
  }
}

abstract class ArithmeticCalculatorI {
  const ArithmeticCalculatorI();

  String f(
    String operation,
    String text, [
    double Function(double, double, String)? calc,
  ]) {
    calc ??= _doCalc;

    while (text.contains(operation)) {
      // removes all (+-) conflicts
      if (operation == "-") text = text.replaceAll('+-', '-');

      text = text.replaceFirstMapped(
          RegExp('([-]?\\d*\\.?\\d+[$operation]\\d*\\.?\\d+)'), (match) {
        List<String>? splitedText = match.group(1)?.split(operation);

        // if list is null
        if (splitedText == null) return '';

        // it works in case => (-3-1) -> it splits => ['', '3', '1'], operation is -> "-"
        // we must delete ('') in -> ['', '3', '1'] and replase ('3') to ('-3')
        if (splitedText.contains('')) {
          splitedText.remove('');
          splitedText[0] = "-${splitedText[0]}";
        }

        return "${splitedText.map((e) => double.parse(e)).reduce((a, b) => calc!(a, b, operation))}";
      });

      if (double.tryParse(text) != null) return text;
    }

    return text;
  }

  double _doCalc(double a, double b, String operation) {
    if (operation == '%') return a * (b / 100);
    if (operation == '/') return a / b;
    if (operation == '*') return a * b;
    if (operation == '-') return a - b;
    if (operation == '+') return a + b;
    return 0;
  }
}
