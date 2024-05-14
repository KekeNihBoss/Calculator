import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:url_launcher/url_launcher.dart';

String strInput = "";
final txtControllerInput = TextEditingController();
final txtControllerResult = TextEditingController();

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State createState() => OverviewState();
}

class OverviewState extends State<Overview> {
  @override
  void initState() {
    super.initState();
    txtControllerInput.addListener(() {});
    txtControllerResult.addListener(() {});
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    txtControllerInput.dispose();
    txtControllerResult.dispose();
    super.dispose();
  }

  //First Row of keys
  Row buttonRowContainer_1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "7";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "7",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "8";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "8",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "9";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "9",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "/";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "/",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ],
    );
  }

  //Second Row of keys
  Row buttonRowContainer_2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "4";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "4",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "5";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "5",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "6";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "6",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "*";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "*",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ],
    );
  }

  //Third Row of keys
  Row buttonRowContainer_3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "1";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "1",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "2";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "2",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "3";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "3",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "-";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "-",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ],
    );
  }

  //Forth Row of keys
  Row buttonRowContainer_4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + ".";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            ".",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "0";
          }),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "0",
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () => setState(() {
            txtControllerInput.text = (txtControllerInput.text.isNotEmpty)
                ? (txtControllerInput.text
                    .substring(0, txtControllerInput.text.length - 1))
                : "";
          }),
          
          child: const Icon(Icons.backspace, size: 35, color: Colors.blueGrey),
        ),
        TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(18.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () => setState(() {
            txtControllerInput.text = "${txtControllerInput.text}+";
          }),
          child: const Text("+", style: TextStyle(fontSize: 35)),
        ),
      ],
    );
  }

  Container keypadButtonRow() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buttonRowContainer_1(),
          buttonRowContainer_2(),
          buttonRowContainer_3(),
          buttonRowContainer_4(),
        ],
      ),
    );
  }

  Container buttonValue() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
              onPressed: () {
                //Calculate value
                //Parse expression:
                Parser p = Parser();
                // Bind variables:
                ContextModel cm = ContextModel();
                Expression exp = p.parse(txtControllerInput.text);
                setState(() {
                  txtControllerResult.text =
                      exp.evaluate(EvaluationType.REAL, cm).toString();
                });
              },
              child: const Text(
                '=',
                style: TextStyle(fontSize: 55),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //This returns a Column for the keypad
  Column keypadContainer() {
    return Column(
      children: <Widget>[keypadButtonRow(), buttonValue()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.fromSwatch().copyWith(
                        secondary: const Color.fromARGB(255, 253, 253, 253))),
                child: Container(
                    height: 60,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Calculator', //Appbar title
                          style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          icon: const Icon(Icons.web),
                          tooltip: 'View source code',
                          color: Colors.blueGrey,
                          onPressed: () =>
                              // ignore: deprecated_member_use
                              launch("https://github.com/reven-erlangga/android-calculator"), //Shortcut
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: const InputDecoration.collapsed(hintText: ""),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                      controller: txtControllerInput,
                      onTap: () =>
                          FocusScope.of(context).requestFocus(FocusNode()),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: const InputDecoration.collapsed(
                        hintText: "0",
                        fillColor: Colors.blueGrey,
                      ),
                      textInputAction: TextInputAction.none,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey),
                      textAlign: TextAlign.right,
                      controller: txtControllerResult,
                      onTap: () {},
                    )),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              size: 40,
                            ),
                            color: Colors.blueGrey,
                            onPressed: () {
                              setState(() {
                                txtControllerInput.text = "";
                                txtControllerResult.text = "";
                              });
                            }))),
                const Padding(padding: EdgeInsets.all(20)),
                keypadContainer(),
              ],
            )));
  }
}
