import 'package:flutter/material.dart';
import 'package:kbc/resultpage.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {

  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }
//var questions;

  List<QuestionModel> questions = [
    QuestionModel(
      "The International Literacy Day is observed on",
      {
        "Nov 28": false,
        "May 2": false,
        "Sep 8": true,
        "Sep 22": false,
      },
    ),
    QuestionModel(
        "The language of Lakshadweep. a Union Territory of India, is", {
      "Tamil": false,
      "Hindi": false,
      "Telugu": false,
      "Malayalam": true,
    }),
    QuestionModel(
        "In which group of places the Kumbha Mela is held every twelve years?",
        {
          "Ujjain. Purl; Prayag. Haridwar": false,
          "Prayag. Haridwar, Ujjain,. Nasik": true,
          "Rameshwaram. Purl, Badrinath. Dwarika": false,
          "Chittakoot, Ujjain, Prayag,'Haridwar": false,
        }),
    QuestionModel("Bahubali festival is related to", {
      "Islam": false,
      "Hinduism": false,
      "Jainism": true,
      "Buddhism": false,
    }),
    QuestionModel("Which day is observed as the World Standards Day?", {
      "Oct 14": true,
      "June 26": false,
      "Nov 15": false,
      "Dec 2": false,
    }),
    QuestionModel(
        "Which of the following was the theme of the World Red Cross and Red Crescent Day?", {
        "'Dignity for all - focus on women'": false,
        "Focus on health for all": false,
        "Dignity for all - focus on Children'": true,
        "Nourishment for all-focus on children'": false,
        }),
    QuestionModel(
        "September 27 is celebrated every year as", {
      "Teachers' Day": false,
      "National Integration Day": false,
      "International Literacy Day": false,
      "World Tourism Day": true,
    }),
    QuestionModel("Who is the author of 'Manas Ka-Hans' ?", {
      "Khushwant Singh": false,
      "Prem Chand": false,
      "Jayashankar Prasad": false,
      "Amrit Lal Nagar": true,
    }),
    QuestionModel(
        "The death anniversary of which of the following leaders is observed as Martyrs' Day?",
        {
          "Smt. Indira Gandhi": false,
          "PI. Jawaharlal Nehru": false,
          "Mahatma Gandhi": true,
          "Lal Bahadur Shastri": false,
        }),
    QuestionModel(
        "Who is the author of the epic 'Meghdoot'?", {
      "Vishakadatta": false,
      "Kalidas": true,
      "Valmiki": false,
      "Banabhatta": false,
    }),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C1542),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            var questions;
            if (page == questions.length - 1) {
              setState(() {
                btnText = "See Results";
              });
            }
            setState(() {
              answered = false;
            });
          },
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1}/10",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: Text(
                    "${questions[index].question}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                for (int i = 0; i < questions[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: const EdgeInsets.only(
                        bottom: 20.0, left: 12.0, right: 12.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: btnPressed
                          ? questions[index].answers!.values.toList()[i]
                          ? Colors.green
                          : Colors.red
                          : AppColor.h2Color,
                      onPressed: !answered
                          ? () {
                        if (questions[index]
                            .answers!
                            .values
                            .toList()[i]) {
                          score++;
                          print("yes");
                        } else {
                          print("no");
                        }
                        setState(() {
                          btnPressed = true;
                          answered = true;
                        });
                      }
                          : null,
                      child: Text(questions[index].answers!.keys.toList()[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                    ),
                  ),
                const SizedBox(
                  height: 40.0,
                ),
                RawMaterialButton(
                  onPressed: () {
                    if (_controller!.page?.toInt() == questions.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen(score)));
                    } else {
                      _controller!.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInExpo);
                      setState(() {
                        btnPressed = false;
                      });
                    }
                  },
                  shape: const StadiumBorder(),
                  fillColor: Colors.blue,
                  padding: const EdgeInsets.all(18.0),
                  elevation: 0.0,
                  child: Text(
                    btnText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
          itemCount: questions.length,
        ),),
    );
  }
}

class AppColor {
  static final h1Color = const Color(0xFF252c4a);
  static final h2Color = const Color(0xFF117eeb);
}

class QuestionModel {
  String? question;
  Map<String, bool>? answers;

  QuestionModel(this.question, this.answers);
}
