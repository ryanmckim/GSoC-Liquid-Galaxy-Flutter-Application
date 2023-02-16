import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Stepper(
          steps: const [
            Step(
                title: Text("About Me"),
                content: Text(
                    "My name is Ryan Kim and I am a current 3rd year majoring in CS at The University of British Columbia, in Vancouver, BC, Canada.")),
            Step(
                title: Text("Education"),
                content: Text(
                    "The University of British Columbia \n B.Sc, Computer Science Major")),
            Step(
                title: Text("Work Experience"),
                content: Text(
                    "SAP - Software Developer Intern (Current) \n UBC - Frontend Developer")),
            Step(
                title: Text("Extracurriculars"),
                content: Text(
                    "Microsoft Teals Program \n UBC Computer Science Student Society \n UBC Google Development Student Club \n UBC Game Development Club \n UBC Launch Pad"))
          ],
          onStepTapped: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentStep: currentIndex,
          onStepContinue: () {
            if (currentIndex != 3) {
              setState(() {
                currentIndex += 1;
              });
            }
          },
          onStepCancel: () {
            if (currentIndex != 0) {
              setState(() {
                currentIndex -= 1;
              });
            }
          },
        )));
  }
}
