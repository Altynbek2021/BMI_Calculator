import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const blankColor = Color.fromARGB(255, 82, 90, 131);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          const Expanded(
            //firs ROW
            child: Row(
              children: [
                Expanded(
                    child: Blank_(
                  blankchild: GenderForm(
                    genderIcon: FontAwesomeIcons.mars,
                    genderChoice: "MALE",
                  ),
                  colour: blankColor,
                )),
                Expanded(
                  ////////////////second ROW
                  child: Blank_(
                    blankchild: GenderForm(
                      genderChoice: "FEMALE",
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                    colour: blankColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
              child: Blank_(blankchild: Column(), colour: blankColor)),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Blank_(blankchild: Column(), colour: blankColor)),
                Expanded(
                    child: Blank_(blankchild: Column(), colour: blankColor)),
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

class GenderForm extends StatelessWidget {
  const GenderForm({
    super.key,
    required this.genderIcon,
    required this.genderChoice,
  });
  final IconData genderIcon;
  final String genderChoice;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon as IconData?,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          genderChoice,
          style: const TextStyle(color: Colors.black, fontSize: 29),
        )
      ],
    );
  }
}

class Blank_ extends StatelessWidget {
  const Blank_({super.key, required this.colour, required this.blankchild});
  final Color colour;
  final Widget blankchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: blankchild,
      margin: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(30)),
    );
  }
}
