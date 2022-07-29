import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:dreamnlaunch/LessonFour/storybrainfour.dart';

Color btnColor =Color(0xffffffFF);
Color borderColor =Color(0xffffffff);
StoryBrain storyBrainFour = StoryBrain();
class LessonFourPicPage extends StatefulWidget {
  const LessonFourPicPage({Key? key}) : super(key: key);

  @override
  State<LessonFourPicPage> createState() => _LessonFourPicPageState();
}

class _LessonFourPicPageState extends State<LessonFourPicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text('31000',
                    style: TextStyle(
                        color: Color(0xff8549BA),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
                IconButton(icon:Image.asset('images/XP.png',height: 21,width: 24,color: const Color(0xff8549BA),),splashRadius:15,iconSize: 10,
                  onPressed: (){print('i got pressed');},),
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                IconButton(icon:Image.asset('images/crown.png',height: 22,width: 24,),splashRadius:15,iconSize: 10,
                  onPressed: (){print('i got pressed');},),
                const SizedBox(width: 0,),
                const Text(
                  '1000',
                  style: TextStyle(
                      color: Color(0xffFFC715),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),


                ),
              ],),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                IconButton(icon:Image.asset('images/fire1.png',height: 22,width: 16,),iconSize: 10,splashRadius:15,
                  onPressed: (){print('i got pressed');},),
                const SizedBox(width: 0,),
                const Text(
                  '1000',
                  style: TextStyle(
                      color: Color(0xffFFA500),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){},splashRadius:15,icon: const Icon(IconlyBold.heart,size: 30,color: Color(0xffFF0303),)),
                const Text(
                  '5',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      color :Color(0xffFF0303),
                      fontWeight: FontWeight.w600),
                ),
              ],),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 19,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [],
            ),
            const SizedBox(height: 114,),
            Image.asset('images/finLiteracy.png',width: 292,height: 292,),
            const SizedBox(height: 18,),
            const Text(
              'WHAT IS FINANCIAL LITERACY?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:20 ,
                fontFamily: 'Inter',
                fontWeight:FontWeight.w500 ,
              ),
            ),
            const SizedBox(height: 157,),Container(
              margin: const EdgeInsets.only(bottom: 25,right: 31,left: 30),
              height: 43,
              child: ElevatedButton(onPressed: (){
                setState((){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LessonFourIntroPage()));


                });
              },
                  style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    textStyle:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 13,left: 50,bottom: 13,right: 50),
                    child: Text(
                        'START  +10XP'
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [ IconButton(onPressed: (){},
            splashRadius:15,icon: const Icon(IconlyBold.home,size: 30,color: Color(0xffFF0303),)),
        ],),
      ),
    );
  }
}
class LessonFourIntroPage extends StatefulWidget {
  const LessonFourIntroPage({Key? key}) : super(key: key);

  @override
  State<LessonFourIntroPage> createState() => _LessonFourIntroPageState();
}

class _LessonFourIntroPageState extends State<LessonFourIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B7A57),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LessonFourPicPage()));
                      },
                      iconSize: 30,
                      icon: const Icon(
                        Icons.close_sharp,
                        color: Colors.white,
                      )),
                  Expanded(flex: 5,
                    child: LinearPercentIndicator(percent: 0,
                      lineHeight: 10,
                      animation: true,
                      animationDuration: 1000,
                      barRadius: const Radius.circular(25),
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          print('i got pressed');
                        },
                        iconSize: 30,
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],),
              const SizedBox(height: 329,),
              const Center(
                child: Text(
                  'WHAT IS FINANCIAL \nLITERACY?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 308,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),)
                  ),
                    child: const Text(
                      'START',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessonFour1Page()));
                    },
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
class LessonFour1Page extends StatefulWidget {
  const LessonFour1Page({Key? key}) : super(key: key);

  @override
  State<LessonFour1Page> createState() => _LessonFour1PageState();
}

class _LessonFour1PageState extends State<LessonFour1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff18A8D8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LessonFourIntroPage()));
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.2,
                      lineHeight: 10,
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: const EdgeInsets.only(top: 60,left: 12,right: 12),
                child: Text(
                  storyBrainFour.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              const SizedBox(height:303,),
              Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LessonFour2Page()));
                        storyBrainFour.nextLessonText();
                      });
                    },
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
class LessonFour2Page extends StatefulWidget {
  const LessonFour2Page({Key? key}) : super(key: key);

  @override
  State<LessonFour2Page> createState() => _LessonFour2PageState();
}

class _LessonFour2PageState extends State<LessonFour2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff0F52BA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LessonFour1Page()));
                            storyBrainFour.previousLessonText();
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.4,
                      lineHeight: 10,
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: const EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrainFour.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              const SizedBox(height:411,),
              Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LessonFour3Page()));
                        storyBrainFour.nextLessonText();


                      });
                    },
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
class LessonFour3Page extends StatefulWidget {
  const LessonFour3Page({Key? key}) : super(key: key);

  @override
  State<LessonFour3Page> createState() => _LessonFour3PageState();
}

class _LessonFour3PageState extends State<LessonFour3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff5D3FD3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LessonFour2Page()));
                            storyBrainFour.previousLessonText();
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.8,
                      lineHeight: 10,
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: const EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrainFour
                      .getlessonText(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 351,),
              Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LessonFour4Page()));
                        storyBrainFour.nextLessonText();
                      });
                    },
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
class LessonFour4Page extends StatefulWidget {
  const LessonFour4Page({Key? key}) : super(key: key);

  @override
  State<LessonFour4Page> createState() => _LessonFour4PageState();
}

class _LessonFour4PageState extends State<LessonFour4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff960001),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LessonFour3Page()));
                            storyBrainFour.previousLessonText();
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.8,
                      lineHeight: 10,
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: const EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrainFour
                      .getlessonText(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 264,),
              Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LessonFourPage5()));
                        storyBrainFour.nextLessonText();
                      });
                    },
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
class LessonFourPage5 extends StatefulWidget {
  const LessonFourPage5({Key? key}) : super(key: key);

  @override
  State<LessonFourPage5> createState() => _LessonFourPage5State();
}

class _LessonFourPage5State extends State<LessonFourPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffC35214),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LessonFour4Page()));
                            storyBrainFour.previousLessonText();
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 1,
                      lineHeight: 10,
                      backgroundColor:const Color(0xff888888) ,
                      progressColor: const Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: const EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrainFour
                      .getlessonText(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 351,),
              Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      // setState(() {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const LessonFour4Page()));
                      //   storyBrainFour.nextLessonText();
                      // });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}







