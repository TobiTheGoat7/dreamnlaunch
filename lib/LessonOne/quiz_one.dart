import 'package:dreamnlaunch/LessonOne/lesson_one.dart';
import 'package:dreamnlaunch/LessonOne/quizone.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../LessonTwo/lesson_two.dart';
import 'package:percent_indicator/percent_indicator.dart';

QuizBrain quizBrain = QuizBrain();

class QuizOnePage extends StatefulWidget {
  const QuizOnePage({Key? key}) : super(key: key);

  @override
  State<QuizOnePage> createState() => _QuizOnePageState();
}

class _QuizOnePageState extends State<QuizOnePage> {
  double percent = 0.25;
  void progressIndicator() {
    setState(() {
      percent = percent + 0.25;
    });
  }
void pagenext(){if (quizBrain.isfinished == true) {
  setState(() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const LessonCompletePage()));
  });}}
  void regressIndicator() {
    setState(() {
      percent = percent - 0.25;
    });
  }

  bool correctAnswer6 = quizBrain.getAnswer5();
  bool correctAnswer1 = quizBrain.getAnswer();
  bool correctAnswer2 = quizBrain.getAnswer1();
  bool correctAnswer3 = quizBrain.getAnswer2();
  bool correctAnswer4 = quizBrain.getAnswer3();
  bool correctAnswer5 = quizBrain.getAnswer4();

  void answer1() {
    if (correctAnswer1 == true) {
      btnColora = Color(0xffC7FFD0);
      borderColora = Color(0xff00E825);
    } else {
      borderColora = Color(0xffFF0303);
      btnColora = Color(0xffFFBEBE);
    }
  }
  void answer2() {
    if (correctAnswer1 == true) {
      btnColorb = Color(0xffC7FFD0);
      borderColorb = Color(0xff00E825);
    } else {
      borderColorb = Color(0xffFF0303);
      btnColorb = Color(0xffFFBEBE);
    }
  }
  void answer3() {
    if (correctAnswer3 == true) {
      btnColorc = Color(0xffC7FFD0);
      borderColorc = Color(0xff00E825);
    } else {
      borderColorc = Color(0xffFF0303);
      btnColorc = Color(0xffFFBEBE);
    }
  }
  void answer4() {
    if (correctAnswer4 == true) {
      btnColord = Color(0xffC7FFD0);
      borderColord = Color(0xff00E825);
    } else {
      borderColord = Color(0xffFF0303);
      btnColord = Color(0xffFFBEBE);
    }
  }
  void answer5() {
    if (correctAnswer5 == true) {
      btnColore = Color(0xffC7FFD0);
      borderColore = Color(0xff00E825);
    } else {
      borderColore = Color(0xffFF0303);
      btnColore = Color(0xffFFBEBE);
    }
  }
  void answer6() {
    if (correctAnswer6 == false) {
      borderColorf = Color(0xffff0303);
      btnColorf = Color(0xffffbebe);
    } else {
      btnColorf = Color(0xffC7FFD0);
      borderColorf = Color(0xff00E825);
    }
  }
  void verify() {
    if (isPressedC == true) {
      setState(() {
        isPressedCC == true;
        answer1();
        answer2();
        answer3();
        answer4();
        answer5();
        answer6();
      });
    }
  }
  // void nextpage() {
  //   if (isPressedC = true) {
  //     setState(() {
  //       print('true');
  //       quizBrain.nextQuestion();
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const QuizOne2Page()));
  //     });
  //   }
  // }
  bool isPressedC = false;
  bool isPressedCC = false;
  bool isPresseda = true;
  bool isPressedb = true;
  bool isPressedc = true;
  bool isPressedd = true;
  bool isPressede = true;
  bool isPressedf = true;
  Color btnColora = Color(0xffffffFF);
  Color borderColora = Color(0xffffffFF);
  Color btnColorb = Color(0xffffffFF);
  Color borderColorb = Color(0xffffffFF);
  Color btnColorc = Color(0xffffffFF);
  Color borderColorc = Color(0xffffffFF);
  Color btnColord = Color(0xffffffFF);
  Color borderColord = Color(0xffffffFF);
  Color btnColore = Color(0xffffffFF);
  Color borderColore = Color(0xffffffFF);
  Color btnColorf = Color(0xffffffFF);
  Color borderColorf = Color(0xffffffFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('31000',
                    style: TextStyle(
                        color: Color(0xff8549BA),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
                IconButton(
                  icon: Image.asset(
                    'images/XP.png',
                    height: 21,
                    width: 24,
                    color: const Color(0xff8549BA),
                  ),
                  iconSize: 10,
                  splashRadius: 15,
                  onPressed: () {
                    print('i got pressed');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset(
                    'images/crown.png',
                    height: 22,
                    width: 24,
                  ),
                  iconSize: 10,
                  splashRadius: 15,
                  onPressed: () {
                    print('i got pressed');
                  },
                ),
                SizedBox(
                  width: 0,
                ),
                Text(
                  '1000',
                  style: TextStyle(
                      color: Color(0xffFFC715),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset(
                    'images/fire1.png',
                    height: 22,
                    width: 16,
                  ),
                  splashRadius: 15,
                  iconSize: 10,
                  onPressed: () {
                    print('i got pressed');
                  },
                ),
                SizedBox(
                  width: 0,
                ),
                Text(
                  '1000',
                  style: TextStyle(
                      color: Color(0xffFFA500),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    splashRadius: 15,
                    icon: Icon(
                      IconlyBold.heart,
                      size: 30,
                      color: Color(0xffFF0303),
                    )),
                Text(
                  '5',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      color: Color(0xffFF0303),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (quizBrain.goback() == true) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QuizIntroPage()));
                          } else {
                            quizBrain.previousQuestionText();
                            regressIndicator();
                          }
                        });
                      },
                      iconSize: 30,
                      icon: Icon(
                        Icons.close_sharp,
                        color: Color(0xFF009FFF),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: LinearPercentIndicator(
                      percent: percent,
                      lineHeight: 10,
                      animation: true,
                      animationDuration: 1000,
                      barRadius: Radius.circular(25),
                      backgroundColor: Color(0xff888888),
                      progressColor: Color(0xFF009FFF),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    width: 10,
                  ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 15, top: 10),
                width: double.infinity,
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.5,
                      fontFamily: 'Inter',
                      wordSpacing: 5),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      bottom: 20,
                      top: 10,
                    ),
                    child: Text(
                      'Select all that apply',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xffABABAB),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPresseda
                          ? () {
                              if (isPresseda = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColora = Color(0xffE5FBFF);
                                  borderColora = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                          primary: btnColora,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColora,
                              width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText()),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPressedb
                          ? () {
                              if (isPressedb = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColorb = Color(0xffE5FBFF);
                                  borderColorb = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText1()),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: btnColorb,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColorb,
                              width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPressedc
                          ? () {
                              if (isPressedc = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColorc = Color(0xffE5FBFF);
                                  borderColorc = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText2()),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: btnColorc,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColorc,
                              width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPressedd
                          ? () {
                              if (isPressedd = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColord = Color(0xffE5FBFF);
                                  borderColord = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText3()),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: btnColord,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColord,
                              width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPressede
                          ? () {
                              if (isPressede = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColore = Color(0xffE5FBFF);
                                  borderColore = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText4()),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: btnColore,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColore,
                              width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: isPressedf
                          ? () {
                              if (isPressedf = true) {
                                setState(() {
                                  isPressedC = true;
                                  btnColorf = Color(0xffE5FBFF);
                                  borderColorf = Color(0xff0078FF);
                                });
                              }
                            }
                          : null,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(quizBrain.getAnswerText5()),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: btnColorf,
                          onPrimary: Color(0xff303030),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: borderColorf,
                              width: 2),
                          textStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                height: 60,
                child: TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Colors.blue,
                    minimumSize: Size(300, 50),
                  ),
                  onPressed: isPressedC
                      ? () {
                    setState(() {
                      if (quizBrain.isfinished() == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const LessonCompletePage()));
                      } else {
                        quizBrain.nextQuestion();
                        progressIndicator();
                        verify();
                      }
                    });
                        }
                      : null,
                  child: Center(
                    child: Text(
                      'VERIFY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class QuizOne2Page extends StatefulWidget {
//   const QuizOne2Page({Key? key}) : super(key: key);
//
//   @override
//   State<QuizOne2Page> createState() => _QuizOne2PageState();
// }
//
// class _QuizOne2PageState extends State<QuizOne2Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Text('31000',
//                     style: TextStyle(
//                         color: Color(0xff8549BA),
//                         fontFamily: 'Inter',
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600)),
//                 IconButton(
//                   icon: Image.asset(
//                     'images/XP.png',
//                     height: 21,
//                     width: 24,
//                     color: Color(0xff8549BA),
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/crown.png',
//                     height: 22,
//                     width: 24,
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFC715),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/fire1.png',
//                     height: 22,
//                     width: 16,
//                   ),
//                   splashRadius: 15,
//                   iconSize: 10,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFA500),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     splashRadius: 15,
//                     icon: Icon(
//                       IconlyBold.heart,
//                       size: 30,
//                       color: Color(0xffFF0303),
//                     )),
//                 Text(
//                   '5',
//                   style: TextStyle(
//                       fontFamily: 'Inter',
//                       fontSize: 18,
//                       color: Color(0xffFF0303),
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const QuizOnePage()));
//                           quizBrain.previousQuestionText();
//                         });
//                         ;
//                       },
//                       iconSize: 30,
//                       icon: Icon(
//                         Icons.close_sharp,
//                         color: Color(0xFF009FFF),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 7,
//                     child: LinearPercentIndicator(
//                       percent: 0.5,
//                       lineHeight: 10,
//                       animation: true,
//                       animationDuration: 1000,
//                       barRadius: Radius.circular(25),
//                       backgroundColor: Color(0xff888888),
//                       progressColor: Color(0xFF009FFF),
//                     ),
//                   ),
//                   Expanded(
//                       child: SizedBox(
//                     width: 10,
//                   ))
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 15, top: 10),
//                 width: double.infinity,
//                 child: Text(
//                   quizBrain.getQuestionText(),
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18,
//                       height: 1.5,
//                       fontFamily: 'Inter',
//                       wordSpacing: 5),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(
//                       left: 20,
//                       bottom: 20,
//                       top: 10,
//                     ),
//                     child: Text(
//                       'Select all that apply',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color(0xffABABAB),
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'Inter',
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(quizBrain.getAnswerText())),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer1();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText1()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer2();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           quizBrain.getAnswerText2(),
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer3();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText3()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer4();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText4()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer5();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText5()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
//                 height: 60,
//                 child: TextButton(
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     primary: Color(0xffA7A7A7),
//                     minimumSize: Size(300, 50),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => QuizOne3Page()));
//                     });
//                     quizBrain.nextQuestion();
//                   },
//                   child: Center(
//                     child: Text(
//                       'VERIFY',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontFamily: 'Inter',
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizOne3Page extends StatefulWidget {
//   const QuizOne3Page({Key? key}) : super(key: key);
//
//   @override
//   State<QuizOne3Page> createState() => _QuizOne3PageState();
// }
//
// class _QuizOne3PageState extends State<QuizOne3Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Text('31000',
//                     style: TextStyle(
//                         color: Color(0xff8549BA),
//                         fontFamily: 'Inter',
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600)),
//                 IconButton(
//                   icon: Image.asset(
//                     'images/XP.png',
//                     height: 21,
//                     width: 24,
//                     color: Color(0xff8549BA),
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/crown.png',
//                     height: 22,
//                     width: 24,
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFC715),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/fire1.png',
//                     height: 22,
//                     width: 16,
//                   ),
//                   splashRadius: 15,
//                   iconSize: 10,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFA500),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     splashRadius: 15,
//                     icon: Icon(
//                       IconlyBold.heart,
//                       size: 30,
//                       color: Color(0xffFF0303),
//                     )),
//                 Text(
//                   '5',
//                   style: TextStyle(
//                       fontFamily: 'Inter',
//                       fontSize: 18,
//                       color: Color(0xffFF0303),
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const QuizOne2Page()));
//                           quizBrain.previousQuestionText();
//                         });
//                         ;
//                       },
//                       iconSize: 30,
//                       icon: Icon(
//                         Icons.close_sharp,
//                         color: Color(0xFF009FFF),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 7,
//                     child: LinearPercentIndicator(
//                       percent: 0.75,
//                       lineHeight: 10,
//                       animation: true,
//                       animationDuration: 1000,
//                       barRadius: Radius.circular(25),
//                       backgroundColor: Color(0xff888888),
//                       progressColor: Color(0xFF009FFF),
//                     ),
//                   ),
//                   Expanded(
//                       child: SizedBox(
//                     width: 10,
//                   ))
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 15, top: 10),
//                 width: double.infinity,
//                 child: Text(
//                   quizBrain.getQuestionText(),
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18,
//                       height: 1.5,
//                       fontFamily: 'Inter',
//                       wordSpacing: 5),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(
//                       left: 20,
//                       bottom: 20,
//                       top: 10,
//                     ),
//                     child: Text(
//                       'Select all that apply',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color(0xffABABAB),
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'Inter',
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                         ;
//                       },
//                       child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(quizBrain.getAnswerText())),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer1();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                         ;
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText1()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer2();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           quizBrain.getAnswerText2(),
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer3();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText3()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer4();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText4()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer5();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText5()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
//                 height: 60,
//                 child: TextButton(
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     primary: Color(0xffA7A7A7),
//                     minimumSize: Size(300, 50),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => QuizOne4Page()));
//                     });
//                     quizBrain.nextQuestion();
//                   },
//                   child: Center(
//                     child: Text(
//                       'VERIFY',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontFamily: 'Inter',
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizOne4Page extends StatefulWidget {
//   const QuizOne4Page({Key? key}) : super(key: key);
//
//   @override
//   State<QuizOne4Page> createState() => _QuizOne4PageState();
// }
//
// class _QuizOne4PageState extends State<QuizOne4Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Text('31000',
//                     style: TextStyle(
//                         color: Color(0xff8549BA),
//                         fontFamily: 'Inter',
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600)),
//                 IconButton(
//                   icon: Image.asset(
//                     'images/XP.png',
//                     height: 21,
//                     width: 24,
//                     color: Color(0xff8549BA),
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/crown.png',
//                     height: 22,
//                     width: 24,
//                   ),
//                   iconSize: 10,
//                   splashRadius: 15,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFC715),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Image.asset(
//                     'images/fire1.png',
//                     height: 22,
//                     width: 16,
//                   ),
//                   splashRadius: 15,
//                   iconSize: 10,
//                   onPressed: () {
//                     print('i got pressed');
//                   },
//                 ),
//                 SizedBox(
//                   width: 0,
//                 ),
//                 Text(
//                   '1000',
//                   style: TextStyle(
//                       color: Color(0xffFFA500),
//                       fontFamily: 'Inter',
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     splashRadius: 15,
//                     icon: Icon(
//                       IconlyBold.heart,
//                       size: 30,
//                       color: Color(0xffFF0303),
//                     )),
//                 Text(
//                   '5',
//                   style: TextStyle(
//                       fontFamily: 'Inter',
//                       fontSize: 18,
//                       color: Color(0xffFF0303),
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const QuizOne3Page()));
//                           quizBrain.previousQuestionText();
//                         });
//                         ;
//                       },
//                       iconSize: 30,
//                       icon: Icon(
//                         Icons.close_sharp,
//                         color: Color(0xFF009FFF),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 7,
//                     child: LinearPercentIndicator(
//                       percent: 1.0,
//                       lineHeight: 10,
//                       animation: true,
//                       animationDuration: 1000,
//                       barRadius: Radius.circular(25),
//                       backgroundColor: Color(0xff888888),
//                       progressColor: Color(0xFF009FFF),
//                     ),
//                   ),
//                   Expanded(
//                       child: SizedBox(
//                     width: 10,
//                   ))
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 15, top: 10),
//                 width: double.infinity,
//                 child: Text(
//                   quizBrain.getQuestionText(),
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18,
//                       height: 1.5,
//                       fontFamily: 'Inter',
//                       wordSpacing: 5),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(
//                       left: 20,
//                       bottom: 20,
//                       top: 10,
//                     ),
//                     child: Text(
//                       'Select all that apply',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color(0xffABABAB),
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'Inter',
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                         ;
//                       },
//                       child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(quizBrain.getAnswerText())),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer1();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                         ;
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText1()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer2();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           quizBrain.getAnswerText2(),
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer3();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText3()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer4();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText4()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 20, right: 20),
//                     height: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         bool correctAnswer = quizBrain.getAnswer5();
//                         setState(() {
//                           if (correctAnswer == true) {
//                             print('true');
//                           } else {
//                             print('false');
//                           }
//                           ;
//                         });
//                       },
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(quizBrain.getAnswerText5()),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           primary: Colors.white,
//                           onPrimary: Color(0xff303030),
//                           textStyle: TextStyle(
//                             color: Color(0xff303030),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Inter',
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
//                 height: 60,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     primary: Color(0xffA7A7A7),
//                     minimumSize: Size(300, 50),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => LessonCompletePage()));
//                     });
//                   },
//                   child: Center(
//                     child: Text(
//                       'VERIFY',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontFamily: 'Inter',
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LessonCompletePage extends StatefulWidget {
  const LessonCompletePage({Key? key}) : super(key: key);

  @override
  State<LessonCompletePage> createState() => _LessonCompletePageState();
}

class _LessonCompletePageState extends State<LessonCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 11,
              ),
              Container(
                height: 88,
                width: 336,
                child: Text(
                  'Lesson \nComplete!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xffFF7000),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/joyfulman.png',
                width: 142,
                height: 275,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'XP GAINED',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '10 XP',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff8549BA)),
                      )
                    ],
                  ),
                ),
                height: 55,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'SCORE',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '100%',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff00E825)),
                      )
                    ],
                  ),
                ),
                height: 55,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'LITERACY',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            color: Color(0xff404040),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'LEVEL 1',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xfFFF7000)),
                      )
                    ],
                  ),
                ),
                height: 55,
                width: 300,
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xff0078FF),
                    minimumSize: Size(300, 50),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StreakPage()));
                    });
                  },
                  child: Center(
                    child: Text(
                      'CONTINUE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StreakPage extends StatefulWidget {
  const StreakPage({Key? key}) : super(key: key);

  @override
  State<StreakPage> createState() => _StreakPageState();
}

class _StreakPageState extends State<StreakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'images/fire1.png',
                        height: 22,
                        width: 16,
                      ),
                      iconSize: 10,
                      onPressed: () {
                        print('i got pressed');
                      },
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Color(0xffFF7000)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('images/fire1.png'),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Text(
                  '1 day streak',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffFF7000),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                margin: EdgeInsets.only(left: 12, right: 12),
                height: 205,
                width: 336,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xffA7A7A7))),
              ),
              SizedBox(
                height: 141,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ShareStreakPage()));
                              });
                            },
                            iconSize: 50,
                            icon: Icon(
                              IconlyLight.upload,
                              color: Color(0xff0078FF),
                            )),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: Color(0xff0078FF),
                              minimumSize: Size(300, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LessontwoPicPage()));
                              });
                            },
                            child: Center(
                              child: Text(
                                'CONTINUE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShareStreakPage extends StatefulWidget {
  const ShareStreakPage({Key? key}) : super(key: key);

  @override
  State<ShareStreakPage> createState() => _ShareStreakPageState();
}

class _ShareStreakPageState extends State<ShareStreakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StreakPage()));
                    });
                  },
                  iconSize: 30,
                  icon: Icon(
                    Icons.close_sharp,
                    color: Color(0xFF888888),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    'SHARE YOUR STREAK',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 18,
                      color: Color(0xFF888888),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Image.asset('images/streakpic.png'),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print('i got pressed');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/facebook.png',
                          width: 14,
                          height: 22,
                          color: Color(0xff0062E0),
                          scale: 0.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'CONTINUE WITH FACEBOOK',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Color(0xff888888)),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print('i got pressed');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/whatsapp.png',
                          width: 22,
                          height: 22,
                          color: Color(0xff25CF43),
                          scale: 0.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'CONTINUE WITH WHATSAPP',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Color(0xff888888)),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print('i got pressed');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/instagram.png',
                          width: 22,
                          height: 22,
                          color: Color(0xffC837AB),
                          scale: 0.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'CONTINUE WITH INSTAGRAM',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Color(0xff888888)),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print('i got pressed');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/twitter.png',
                          width: 22,
                          height: 22,
                          color: Color(0xff1EA1F2),
                          scale: 0.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'CONTINUE WITH TWITTER',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Color(0xff888888)),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  print('i got pressed');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyLight.download,
                      size: 30,
                      color: Color(0xff888888),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Save Image',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Color(0xff888888)),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
