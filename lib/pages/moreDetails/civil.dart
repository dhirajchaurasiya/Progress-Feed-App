import 'package:flutter/material.dart';

class CivilConstruction extends StatefulWidget {
  const CivilConstruction({super.key});

  @override
  State<CivilConstruction> createState() => _CiState();
}

class _CiState extends State<CivilConstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Details",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 213, 223),
            boxShadow: [
              BoxShadow(blurRadius: 5),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Civil Engineering Building",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contractor :Raman Construction",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Budget: 5 Crores",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Estimated time:6 months",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Work done: 20%",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Ramaining Works: 80%",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                """More:\nThe parts of a project description will vary depending on the type of project. However, your project description should contain the following elements:

Parts of a Project Description Outline
Project Title: Aim for a short, unambiguous, and memorable title. 
Overview: This is a high-level summary (no more than one or two paragraphs).
Project Justification: Explain the problem or opportunity and why the project is necessary.
Objectives: Set specific and measurable project goals.
Phases of Work: Break down the project into phases that describe the desired outcome for each.
Metrics for Evaluating and Monitoring: Include the metrics you’ll use to evaluate the project’s success. 
Timeline: Outline the timeline for each phase, including the basic tasks that you will accomplish, with start and end dates.
Estimated Budget: Include the budget and projected costs.
How to Write a Project Description
Although writing a project description will vary somewhat depending on the type of project, the basic process is the same. The following 10 steps are key to writing a good project description.

Summarize: Write a one- or two-paragraph explanation of what the project aims to accomplish. Avoid delving deep into background or past projects. A good project summary will not only serve as your elevator speech, but will also help you clarify larger issues with your plan.
Define: Describe the problem or opportunity and how the project will address it.
Set goals: Identify SMART project objectives, defined as follows:
Specific: Answer who, what, when, where, and why.
Measurable: Include metrics for defining success.
Achievable: Set goals that are possible to accomplish with the available resources.
Relevant: Goals should be aligned with your organization’s mission.
Time-bound: Include intermediate and final deadlines for each goal.
Explain: Briefly explain your methodology. Include any key technologies or project management techniques you’ll use and why they’re appropriate.
Measure: Identify the project deliverables. How will you measure success and evaluate the project?
Schedule: Include a general timeline, with project phases and milestones. Be sure to note any important deadlines.
Budget: Include the total estimated cost of the project and how much you have budgeted. (Note that this shouldn’t be a line item budget.) Use a project budget template for a more detailed breakdown of budgeted and actual project expenses.
Get feedback: Seek feedback from key stakeholders, customers, and anyone impacted by the project for feedback. Ask them to explain the project in their own words to get a sense of how clearly you’ve communicated the vision.
Proofread: Have someone else proofread the project description. In addition to spelling and grammatical errors, ask them to look for missing details that are significant to the project.
Revise: Update and revise the document as the project progresses. Treat the project description as a living document.""",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
