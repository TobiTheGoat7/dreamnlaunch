import 'package:dreamnlaunch/LessonOne/quiz_one.dart';
import 'package:dreamnlaunch/LessonOne//storybrainone.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';
StoryBrain storyBrain =StoryBrain();

Color btnColor =Color(0xffffffFF);
Color borderColor =Color(0xffffffff);
class LessonOnePicPage extends StatefulWidget {
  const LessonOnePicPage({Key? key}) : super(key: key);

  @override
  State<LessonOnePicPage> createState() => _LessonOnePicPageState();
}

class _LessonOnePicPageState extends State<LessonOnePicPage> {
  bool isLiked = false;
  int likeCount = 0;
  int count = 0;
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
                Text('31000',
                    style: TextStyle(
                        color: Color(0xff8549BA),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
                IconButton(icon:Image.asset('images/XP.png',height: 21,width: 24,color: Color(0xff8549BA),),iconSize: 10,
                  splashRadius:15,
                  onPressed: (){print('i got pressed');},),
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                IconButton(icon:Image.asset('images/crown.png',height: 22,width: 24,),iconSize: 10,splashRadius:15,
                  onPressed: (){print('i got pressed');},),
                SizedBox(width: 0,),
                Text(
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
                IconButton(icon:Image.asset('images/fire1.png',height: 22,width: 16,),splashRadius:15,iconSize: 10,
                  onPressed: (){print('i got pressed');},),
                SizedBox(width: 0,),
                Text(
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
                IconButton(onPressed: (){}, splashRadius:15,icon: Icon(IconlyBold.heart,size: 30,color: Color(0xffFF0303),)),
                Text(
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
            SizedBox(height: 19,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){print('i got pressed');},iconSize: 25, icon: Icon(IconlyLight.search))
              ],
            ),
            SizedBox(height: 144,),
            Image.asset('images/cash.png',width: 336,height: 202.21,),
            SizedBox(height: 18,),
            Text(
              'ASSET & LIABILITY  1',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:20 ,
                fontFamily: 'Inter',
                fontWeight:FontWeight.w500 ,
              ),
            ),
            SizedBox(height: 157,),Container(
              margin: EdgeInsets.only(bottom: 25,right: 31,left: 30),
              height: 43,
              child: ElevatedButton(onPressed: (){
                setState((){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LessonOneIntrPage()));

                });
              },
                  style: ElevatedButton.styleFrom(primary: Color(0xff0078FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13,left: 50,bottom: 13,right: 50),
                    child: Text(
                        'START  +10XP'
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home,size: 30,color:Color(0xffFF7000),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt, size: 30,),
            label: '',
          ),

          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile,size: 30,),
              label: ''
          ),
        ],),
    );
  }
}
class LessonOneIntrPage extends StatefulWidget {
  const LessonOneIntrPage({Key? key}) : super(key: key);

  @override
  State<LessonOneIntrPage> createState() => _LessonOneIntrPageState();
}

class _LessonOneIntrPageState extends State<LessonOneIntrPage> {
  int storyNumber =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff0F52BA),
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
                                builder: (context) => const LessonOnePicPage()));
                      },
                      iconSize: 30,
                      icon: Icon(
                        Icons.close_sharp,
                        color: Colors.white,
                      )),
                  Expanded(flex: 5,
                    child: LinearPercentIndicator(percent: 0,
                      lineHeight: 10,
                      animation: true,
                      animationDuration: 1000,
                      barRadius: Radius.circular(25),
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          print('i got pressed');
                        },
                        iconSize: 30,
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],),
              SizedBox(height: 329,),
              Center(
                child: Text(
                  'ASSET & LIABILITY  1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 308,),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),)
                  ),
                    child: Text(
                      'START',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                     setState((){
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) => LessonOne1Page()));

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
class LessonOne1Page extends StatefulWidget {
  const LessonOne1Page({Key? key}) : super(key: key);

  @override
  State<LessonOne1Page> createState() => _LessonOne1PageState();
}

class _LessonOne1PageState extends State<LessonOne1Page> {
    Color backgroundColor =  Color(0xff5D3FD3);
    bool isPressed =true;
    bool isPressed1 =true;
    bool isPressed2 =true;
    bool isPressed3 =true;
    void colorChange (){
      if(isPressed == true ){backgroundColor = Color(0xffC35214);}
      // else if(isPressed ==false){backgroundColor = Color(0xff3B7A57);}
      // (isPressed1 ==true){backgroundColor = Color(0xff3B7A57);}
      //  if(isPressed2 ==true){backgroundColor = Color(0xff960001);}
      //  if(isPressed3 ==true){backgroundColor = Color(0xffC35214);}
      ;
    }
    void colorChange1 (){
      if(isPressed1 == true ){backgroundColor = Color(0xff3B7A57);};
    }
    void colorChange2 (){
      if(isPressed2 == true ){backgroundColor = Color(0xff960001);};
    }
    void colorChange3 (){
      if(isPressed3 == true ){backgroundColor = Color(0xff18A8D8);};
    }
    double percent =0.2;
    void progressIndicator(){
      setState((){
        percent = percent + 0.2;
      });
    }
    void regressIndicator(){
      setState((){
        percent = percent - 0.2;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                            setState((){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LessonOneIntrPage()));
                            });
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.2,
                      lineHeight: 10,
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: EdgeInsets.only(top: 60,left: 12,right: 12, ),
                child: Text(
                  storyBrain.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 143,),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                     setState((){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const LessonOne2Page()));
                       storyBrain.nextLessonText();
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
class LessonOne2Page extends StatefulWidget {
  const LessonOne2Page({Key? key}) : super(key: key);

  @override
  State<LessonOne2Page> createState() => _LessonOne2PageState();
}

class _LessonOne2PageState extends State<LessonOne2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffC35214),
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
                                    builder: (context) => const LessonOne1Page()));
                            storyBrain.previousLessonText();
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.4,
                      lineHeight: 10,
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrain.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 330,),
              Container(padding: EdgeInsets.all(0),margin: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: Text(
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
                                builder: (context) => const LessonOne3Page()));
                        storyBrain.nextLessonText();


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
class LessonOne3Page extends StatefulWidget {
  const LessonOne3Page({Key? key}) : super(key: key);

  @override
  State<LessonOne3Page> createState() => _LessonOne3PageState();
}

class _LessonOne3PageState extends State<LessonOne3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff3B7A57),
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
                                    builder: (context) => const LessonOne2Page()));
                            storyBrain.previousLessonText();
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.6,
                      lineHeight: 10,
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: EdgeInsets.only(top: 60,left: 12,right: 12, ),
                child: Text(
                  storyBrain.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              SizedBox(height:334 ,),
              Container(padding: EdgeInsets.all(0),margin: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: Text(
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
                                builder: (context) => const LessonOne4Page()));
                        storyBrain.nextLessonText();
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
class LessonOne4Page extends StatefulWidget {
  const LessonOne4Page({Key? key}) : super(key: key);

  @override
  State<LessonOne4Page> createState() => _LessonOne4PageState();
}

class _LessonOne4PageState extends State<LessonOne4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff960001),
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
                                    builder: (context) => const LessonOne3Page()));
                            storyBrain.previousLessonText();
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.8,
                      lineHeight: 10,
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: EdgeInsets.only(top: 60,left: 12,right: 12, ),
                child: Text(
                  storyBrain.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 210,),
              Container(padding: EdgeInsets.all(0),margin: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: Text(
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
                                builder: (context) => const LessonOne5Page()));
                        storyBrain.nextLessonText();
                      });
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
class LessonOne5Page extends StatefulWidget {
  const LessonOne5Page({Key? key}) : super(key: key);

  @override
  State<LessonOne5Page> createState() => _LessonOne5PageState();
}

class _LessonOne5PageState extends State<LessonOne5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff18A8D8),
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
                                    builder: (context) => const LessonOne4Page()));
                            storyBrain.previousLessonText();
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                          )),
                    ),
                    Expanded(flex: 5,child: LinearPercentIndicator(
                      barRadius: Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 1.0,
                      lineHeight: 10,
                      backgroundColor:Color(0xff888888) ,
                      progressColor: Color(0xfffffFFF),)),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print('i got pressed');
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ],),
              ),
              Container(margin: EdgeInsets.only(top: 60,left: 12,right: 12,),
                child: Text(
                  storyBrain.getlessonText(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 375,),
              Container(padding: EdgeInsets.all(0),margin: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(style:TextButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))
                  )
                    ,child: Text(
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
                                builder: (context) => const QuizIntroPage()));
                        storyBrain.nextLessonText();
                      });
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
class QuizIntroPage extends StatefulWidget {
  const QuizIntroPage({Key? key}) : super(key: key);

  @override
  State<QuizIntroPage> createState() => _QuizIntroPageState();
}

class _QuizIntroPageState extends State<QuizIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(children: [
                IconButton(onPressed: (){
                  setState((){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LessonOne5Page()));
                  });
                },iconSize: 30,color: Colors.black, icon: Icon(Icons.close_sharp),)
              ],),
              SizedBox(height: 55,),
              Image.asset('images/manwalking.png'),
              SizedBox(height: 20,),
              Text(
                'Ready to take the quiz?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:20 ,
                  fontFamily: 'Inter',
                  fontWeight:FontWeight.w500 ,
                ),
              ),
              SizedBox(height: 200,),
              Container(
                margin: EdgeInsets.only(bottom: 25,right: 31,left: 30),
                height: 50,
                child: TextButton(onPressed: (){
                  setState((){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizOnePage()));

                  });
                },
                    style: TextButton.styleFrom(primary: Color(0xff303030),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      textStyle:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),

                    ),
                    child: Text(
                        'START'
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





