import 'package:bmi_calculator/blank_widget.dart';
import 'package:bmi_calculator/icon_context.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeBlankColor = Color.fromARGB(255, 82, 90, 131);
const inactiveBlankColor = Color.fromARGB(255, 33, 40, 73);

enum Gender { male, female, kod }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

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
                  child: Blank_(
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
                    child: Blank_(
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
          const Expanded(
              child: Blank_(blankchild: Column(), colour: inactiveBlankColor)),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child:
                        Blank_(blankchild: Column(), colour: activeBlankColor)),
                Expanded(
                    child:
                        Blank_(blankchild: Column(), colour: activeBlankColor)),
              ],
            ),
          ),
          Container(
              color: const Color.fromARGB(255, 241, 240, 237),
              margin: const EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: bottomContainerHeight,
              child: const Center(
                  child: Text(
                "Calculate",
                style: TextStyle(color: Colors.black, fontSize: 35),
              )))
        ],
      ),
    );
  }
}
