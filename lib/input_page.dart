import 'package:bmi_calculator/ResultPage.dart';
import 'package:bmi_calculator/blank_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_context.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female, kod }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

int height = 160;
int weight = 60;
int age = 18;

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 82, 90, 131),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            //firs ROW
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: Cards(
                    blankchild: const GenderForm(
                      genderIcon: FontAwesomeIcons.mars,
                      genderChoice: "MALE",
                    ),
                    colour: selectedGender == Gender.male
                        ? activeBlankColor
                        : inactiveBlankColor,
                  ),
                )),
                Expanded(
                  ////////////////second ROW
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Cards(
                      blankchild: const GenderForm(
                        genderChoice: "FEMALE",
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                      colour: selectedGender == Gender.female
                          ? activeBlankColor
                          : inactiveBlankColor,
                    ),
                  ),
                ),
              ],
            ),
          ), ////////////// Top gender Select area
          Expanded(
              child: Cards(
                  blankchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Height",
                        style: klableTextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: knumLblTextstyle,
                          ),
                          const Text("cm", style: klableTextstyle)
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 120.0,
                        max: 220.0,
                        activeColor: Colors.black,
                      )
                    ],
                  ),
                  colour: activeBlankColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cards(
                      blankchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: klableTextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: knumLblTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                baktygul: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                baktygul: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      colour: activeBlankColor),
                ),
                Expanded(
                    child: Cards(
                        blankchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: klableTextstyle,
                            ),
                            Text(
                              age.toString(),
                              style: knumLblTextstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  baktygul: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  baktygul: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                        colour: activeBlankColor)),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Resultpage()));
            },
            child: Container(
                color: const Color.fromARGB(255, 172, 59, 166),
                margin: const EdgeInsets.only(top: 15.0),
                width: double.infinity,
                height: bottomContainerHeight,
                child: const Center(
                    child: Text(
                  "Calculate",
                  style: TextStyle(
                    color: Color.fromARGB(255, 36, 9, 9),
                    fontSize: 35,
                  ),
                ))),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.baktygul});

  final IconData icon;
  final VoidCallback baktygul;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: baktygul,
      elevation: 10.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 159, 168, 214),
      child: Icon(icon),
    );
  }
}
