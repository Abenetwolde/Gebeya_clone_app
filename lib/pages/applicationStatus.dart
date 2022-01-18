import 'package:flutter/material.dart';

class ApplicationStatus extends StatefulWidget {
  @override
  _ApplicationStatusState createState() => _ApplicationStatusState();
}

class _ApplicationStatusState extends State<ApplicationStatus> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Application Status"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Theme(
        data: ThemeData(
            accentColor: Colors.orange,
            primarySwatch: Colors.orange,
            colorScheme: ColorScheme.light(primary: Colors.orange)),
        child: Stepper(
          steps: getSteps(),
          currentStep: currentStep,
          onStepTapped: (int step) {
            setState(() {
              currentStep = step;
            });
          },
        ),
      ),
    );
  }

  List<Step> getSteps() {
    return [
      Step(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 1: Application review',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              SizedBox(
                height: 1,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
              )
            ]),
        content: Column(
          children: <Widget>[
            Text(
                "This step is your opportunity to shine,show of your knowledge during  an interview with a Subject Matter Expert. They will ask Question relevant to your while,assessing ,your communication and problem solving skills "),
            SizedBox(
              height: 10,
            ),
            Text(
                "A talent Specialist will contact you through email to schedule an interview")
          ],
        ),
        isActive: currentStep >= 0,
        state: currentStep == 0 ? StepState.indexed : StepState.indexed,
      ),
      Step(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 2: Skill Test',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              SizedBox(
                height: 1,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
              )
            ]),
        content: Column(
          children: <Widget>[
            Text(
                "This step is your opportunity to shine,show of your knowledge during  an interview with a Subject Matter Expert. They will ask Question relevant to your while,assessing ,your communication and problem solving skills "),
            SizedBox(
              height: 10,
            ),
            Text(
                "A talent Specialist will contact you through email to schedule an interview")
          ],
        ),
        isActive: currentStep >= 1,
        state: currentStep == 1
            ? StepState.indexed
            : currentStep < 1
                ? StepState.disabled
                : StepState.indexed,
      ),
      Step(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 3: Interview',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              SizedBox(
                height: 1,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
              )
            ]),
        content: Column(
          children: <Widget>[
            Text(
                "This step is your opportunity to shine,show of your knowledge during  an interview with a Subject Matter Expert. They will ask Question relevant to your while,assessing ,your communication and problem solving skills "),
            SizedBox(
              height: 10,
            ),
            Text(
                "A talent Specialist will contact you through email to schedule an interview")
          ],
        ),
        isActive: currentStep >= 2,
        state: currentStep == 2
            ? StepState.indexed
            : currentStep < 2
                ? StepState.disabled
                : StepState.complete,
      ),
      Step(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 4: Onboarding',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              SizedBox(
                height: 1,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
              )
            ]),
        content: Column(
          children: <Widget>[
            Text(
                "functional engineering teams, you ship new features for our cloud platform. Thereby, you actively participate in delivering the best software possible for our customers and business units")
          ],
        ),
        isActive: currentStep >= 3,
        state: currentStep == 3
            ? StepState.indexed
            : currentStep < 3
                ? StepState.disabled
                : StepState.complete,
      ),
    ];
  }
}
