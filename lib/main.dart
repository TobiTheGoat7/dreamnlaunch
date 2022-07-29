import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'LessonOne/lesson_one.dart';
import 'package:dreamnlaunch/LessonOne/storybrainone.dart';
StoryBrain storyBrain = StoryBrain();


void main() =>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GettingStarted(),debugShowCheckedModeBanner: false,
    );
  }
}
class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children:[
            Container(padding: const EdgeInsets.all(40),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/dl.png',width:30 ,height:30 ,color: const Color(0xff009FFF),
                  ),
                const SizedBox(width:10,),
                const Text('dreamnlaunch', style:
                  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Inter',
                  ),)
              ],),
            ),
             const SizedBox(height: 89,),
             Image.asset('images/manWoman.png'),
            const SizedBox(height: 25,),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('The simple, fun and effective way to become financially literate!',
                    textAlign: TextAlign.center,
                  style:TextStyle(fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,

                  ) ,),
              ),
            ),
            const SizedBox(height: 88,),
            Container(margin: const EdgeInsets.only(bottom: 35,right: 25,left: 25),
              child: ElevatedButton(onPressed: (){
                setState((){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HearAboutUsPage()));
                });
              },
                  style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      textStyle:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16,left: 74,bottom: 16,right: 74),
                    child: Text(
                'GET STARTED'
              ),
                  )),
            )


          ]


          ),
        ),
      ),
    );
  }
}
class HearAboutUsPage extends StatefulWidget {
  const HearAboutUsPage({Key? key}) : super(key: key);

  @override
  State<HearAboutUsPage> createState() => _HearAboutUsPageState();
}

class _HearAboutUsPageState extends State<HearAboutUsPage> {

  Color btnColora =const Color(0xffffffFF);
  Color borderColora =const Color(0xffffffff);
  Color btnColorb =const Color(0xffffffFF);
  Color borderColorb =const Color(0xffffffff);
  Color btnColorc =const Color(0xffffffFF);
  Color borderColorc =const Color(0xffffffff);
  Color btnColord =const Color(0xffffffFF);
  Color borderColord =const Color(0xffffffff);
  Color btnColore =const Color(0xffffffFF);
  Color borderColore =const Color(0xffffffff);
  Color btnColorf =const Color(0xffffffFF);
  Color borderColorf =const Color(0xffffffff);
  Color btnColorg =const Color(0xffffffFF);
  Color borderColorg =const Color(0xffffffff);
  Color btnColorh =const Color(0xffffffFF);
  Color borderColorh =const Color(0xffffffff);
  bool isPressedC = false;
  bool isPresseda =true;
  bool isPressedb = true;
  bool isPressedc =true;
  bool isPressedd = true;
  bool isPressede =true;
  bool isPressedf = true;
  bool isPressedg =true;
  bool isPressedh = true;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(margin: const EdgeInsets.only(right:24 ,top:26 ,left: 17),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(icon:const Icon(Icons.close),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GettingStarted()));


                      },
                    iconSize: 30,color: const Color(0xff009FFF),),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(flex:7,child: LinearPercentIndicator(
                    barRadius: const Radius.circular(25),
                    animation: true,
                    animationDuration: 1000,
                    percent: 0.25,
                    lineHeight: 12,
                    backgroundColor:const Color(0xffCFCFCF) ,
                    progressColor: const Color(0xff009FFF),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const Center(child: Text('How did you hear about us?',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),),
            const SizedBox(height: 36,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPresseda? () {
                     if(isPresseda = true){
                       isPressedC =true;
                       setState((){
                         btnColora =const Color(0xffE5FBFF);
                         borderColora =const Color(0xff0078FF);
                       });
                     }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColora,onPrimary: const Color(0xff303030),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(style: BorderStyle.solid,color: borderColora,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Friends/family')
                    ),
                  ),
                ),
                Container( margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedb? () {
                      if(isPressedb = true){
                        isPressedC =true;
                        setState((){
                          btnColorb =const Color(0xffE5FBFF);
                          borderColorb =const Color(0xff0078FF);
                        });
                      }
                      }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorb,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorb,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('TikTok')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedc? () {
                      if(isPressedc = true){
                        isPressedC =true;
                        setState((){
                          btnColorc =const Color(0xffE5FBFF);
                          borderColorc =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorc,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorc,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Google Search')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedd? () {
                      if(isPressedd = true){
                        isPressedC =true;
                        setState((){
                          btnColord =const Color(0xffE5FBFF);
                          borderColord =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColord,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColord,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('App Store/Play Store')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressede? () {
                      if(isPressede = true){
                        isPressedC =true;
                        setState((){
                          btnColore =const Color(0xffE5FBFF);
                          borderColore =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColore,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColore,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Youtube')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedf? () {
                      if(isPressedf = true){
                        isPressedC =true;
                        setState((){
                          btnColorf =const Color(0xffE5FBFF);
                          borderColorf =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorf,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorf,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Faceboook/Instagram')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedg? () {
                      if(isPressedg = true){
                        isPressedC =true;
                        setState((){
                          btnColorg =const Color(0xffE5FBFF);
                          borderColorg =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorg,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorg,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('News/article/blog')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedh? () {
                      if(isPressedh = true){
                        isPressedC =true;
                        setState((){
                          btnColorh =const Color(0xffE5FBFF);
                          borderColorh =const Color(0xff0078FF);
                        });
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorh,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorh,width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Other')
                    ),
                  ),),
              ],
            ),
            const SizedBox(height: 78,),
            Container(margin: const EdgeInsets.only(bottom: 25,right: 31,left: 30),
              child: ElevatedButton(onPressed:isPressedC? (){
               if(isPressedC=true){
                 setState((){
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => const WhyFinancialPage()));
                 });
               }
              }:null,
                  style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle:const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16,left: 74,bottom: 16,right: 74),
                    child: Text(
                        'CONTINUE'
                    ),
                  )),
            )


          ],),
        ),
      ),
    );
  }
}

class WhyFinancialPage extends StatefulWidget {
  const WhyFinancialPage({Key? key}) : super(key: key);

  @override
  State<WhyFinancialPage> createState() => _WhyFinancialPageState();
}

class _WhyFinancialPageState extends State<WhyFinancialPage> {
  Color btnColora =const Color(0xffffffFF);
  Color borderColora =const Color(0xffffffff);
  Color btnColorb =const Color(0xffffffFF);
  Color borderColorb =const Color(0xffffffff);
  Color btnColorc =const Color(0xffffffFF);
  Color borderColorc =const Color(0xffffffff);
  Color btnColord =const Color(0xffffffFF);
  Color borderColord =const Color(0xffffffff);
  Color btnColore =const Color(0xffffffFF);
  Color borderColore =const Color(0xffffffff);
  Color btnColorf =const Color(0xffffffFF);
  Color borderColorf =const Color(0xffffffff);
  bool isPressedC = false;
  bool isPresseda = true;
  bool isPressedb = true;
  bool isPressedc = true;
  bool isPressedd=  true;
  bool isPressede =  true;
  bool isPressedf =  true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(margin: const EdgeInsets.only(right:24 ,top:26 ,left: 17),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(icon:const Icon(Icons.arrow_back_ios),
                      onPressed: (){ Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HearAboutUsPage()));


                      },
                      iconSize: 30,color: const Color(0xff009FFF),),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(flex:7,child: LinearPercentIndicator(
                    barRadius: const Radius.circular(25),
                    animation: true,
                    animationDuration: 1000,
                    percent: 0.5,
                    lineHeight: 12,
                    backgroundColor:const Color(0xffCFCFCF) ,
                    progressColor: const Color(0xff009FFF),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Center(child: Container(height: 50,padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
              child: const Text('Why do you want to become financially literate?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
            ),),
            const SizedBox(height: 16,),
            Container(height: 18,
            child: const Text('Select all that apply',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color(0xff988888)
            ),),),
            const SizedBox(height: 27,),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPresseda? () {
                      if(isPresseda=true){
                        setState((){
                          isPressedC=true;
                          btnColora =const Color(0xffE5FBFF);
                          borderColora =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColora,onPrimary: const Color(0xff303030),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(style: BorderStyle.solid,color: borderColora,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Add to knowledge')
                    ),
                  ),
                ),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedb? () {
                      if(isPresseda=true){
                        setState((){
                          isPressedC=true;
                          btnColorb =const Color(0xffE5FBFF);
                          borderColorb =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorb,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorb,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Financial freedom')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedf? () {
                      if(isPressedf=true){
                        setState((){
                          isPressedC=true;
                          btnColorf =const Color(0xffE5FBFF);
                          borderColorf =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorf,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorf,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Financial literacy')
                    ),
                  ),),
                Container( margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedc? () {
                      if(isPressedc=true){
                        setState((){
                          isPressedC=true;
                          btnColorc =const Color(0xffE5FBFF);
                          borderColorc =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColorc,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorc,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Curiousity')
                    ),
                  ),),
                Container(                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressedd? () {
                      if(isPressedd=true){
                        setState((){
                          isPressedC=true;
                          btnColord =const Color(0xffE5FBFF);
                          borderColord =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColord,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColord,width: 2),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Self improvement')
                    ),
                  ),),
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                    onPressed:isPressede? () {
                      if(isPressede=true){
                        setState((){
                          isPressedC=true;
                          btnColore =const Color(0xffE5FBFF);
                          borderColore =const Color(0xff0078FF);});
                      }
                    }:null,
                    style: ElevatedButton.styleFrom(primary: btnColore,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColore,width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        textStyle: const TextStyle(color: Color(0xff303030),
                          fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                    child: const Align(alignment: Alignment.centerLeft,
                        child: Text('Other')
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 145,),
            Container(margin: const EdgeInsets.only(bottom: 25,right: 31,left: 30),
              child: ElevatedButton(onPressed:isPressedC? (){
              if (isPressedC =true){
                setState((){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PickGoalPage())).then((value) => value?_PickGoalPageState():null); 
                });
              }
              }:null,
                  style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle:const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16,left: 74,bottom: 16,right: 74),
                    child: Text(
                        'CONTINUE'
                    ),
                  )),
            )



          ],),
        ) ,
      ) ,
    );
  }
}
class PickGoalPage extends StatefulWidget {
  const PickGoalPage({Key? key}) : super(key: key);

  @override
  State<PickGoalPage> createState() => _PickGoalPageState();
}

class _PickGoalPageState extends State<PickGoalPage> {
  Color btnColora =const Color(0xffffffFF);
  Color borderColora =const Color(0xffffffff);
  Color btnColorb =const Color(0xffE5FBFF);
  Color borderColorb =const Color(0xff0078FF);
  Color btnColorc =const Color(0xffffffFF);
  Color borderColorc =const Color(0xffffffff);
  Color btnColord =const Color(0xffffffFF);
  Color borderColord =const Color(0xffffffff);
  bool isPressed =true;
  bool isPressed1 =true;
  bool isPressed2 =true;
  bool isPressed3 =true;
  bool isPressed4 =false;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child:  Column(
            children: [
              Container(margin: const EdgeInsets.only(right:24 ,top:26 ,left: 17),
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(icon:const Icon(Icons.arrow_back_ios),
                        onPressed: (){ Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WhyFinancialPage()));},
                        iconSize: 30,color: const Color(0xff009FFF),),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(flex:7,child: LinearPercentIndicator(
                      barRadius: const Radius.circular(25),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.75,
                      lineHeight: 12,
                      backgroundColor:const Color(0xffCFCFCF) ,
                      progressColor: const Color(0xff009FFF),),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Container(height: 50,padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                child: const Text('Pick a Goal?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),),
              ),
              const SizedBox(height: 43,),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton(
                      onPressed:isPressed?(){
                        if(isPressed == true){
                          setState((){
                            btnColora =const Color(0xffE5FBFF);
                            borderColora = const Color(0xff0078FF);
                            isPressed1=false;
                            isPressed2=false;
                            isPressed3=false;
                            isPressed4= true;
                            borderColorb = const Color(0xffffffFF);
                          });
                        }
                      }
                      :null
                      ,style: ElevatedButton.styleFrom(primary: btnColora,onPrimary: const Color(0xff303030),
                          side: BorderSide(style: BorderStyle.solid,color: borderColora,width: 2),
                        shape: const RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20)),),),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text( 'Casual',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                              Text('5 min / day',style: TextStyle(color: Color(0xff303030),
                      fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                            ],
                          )
                      ),
                  ),),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton(
                        onPressed:isPressed1? (){
                          if(isPressed1 == true){
                            setState((){
                              btnColorb =const Color(0xffE5FBFF);
                              borderColorb = const Color(0xff0078FF);
                              isPressed=false;
                              isPressed2=false;
                              isPressed3=false;
                              isPressed4=true;

                            });
                          }
                        }
                      :null,style: ElevatedButton.styleFrom(primary: btnColorb,onPrimary: const Color(0xff303030),
                        side:  BorderSide(style: BorderStyle.solid,color: borderColorb,width: 2)
                        ),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Regular',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                              Text('10 min / day',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                            ],
                          )
                      ),
                    ),),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton( onPressed:isPressed2? (){
                      if(isPressed2 == true){

                        setState((){
                          btnColorc =const Color(0xffE5FBFF);
                          borderColorc = const Color(0xff0078FF);
                          isPressed1=false;
                          isPressed=false;
                          isPressed3=false;
                          isPressed4=true;
                          borderColorb = const Color(0xffffffFF);
                        });
                      }
                    }
                      :null,style: ElevatedButton.styleFrom(primary: btnColorc,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColorc,width: 2),
                        ),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Serious',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                              Text('15 min / day',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                            ],
                          )
                      ),
                    ),),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton( onPressed:isPressed3? (){
                      setState((){
                        if (isPressed3 = true){
                          btnColord =const Color(0xffE5FBFF);
                          borderColord = const Color(0xff0078FF);
                          isPressed1=false;
                          isPressed2=false;
                          isPressed=false;
                          isPressed4=true;
                          borderColorb = const Color(0xffffffFF);
                        }
                      });
                    }:null,
                      style: ElevatedButton.styleFrom(primary:btnColord,onPrimary: const Color(0xff303030),
                        side: BorderSide(style: BorderStyle.solid,color: borderColord,width: 2),
                       ),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Intense',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',)),
                              Text('20 min / day',style: TextStyle(color: Color(0xff303030),
                                fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Inter',)),
                            ],
                          )
                      ),
                    ),),
                ],
              ),
              const SizedBox(height: 78,),
              Container(height: 50, width:230,padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                child: const Text('You can always change your goals later',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Color(0xff888888),
                  ),),
              ),
              const SizedBox(height: 188,),
              Container(margin: const EdgeInsets.only(bottom: 25,right: 31,left: 30),
                child: ElevatedButton(onPressed: isPressed4?(){
                   if( isPressed= true){
                    print('true');
                    isPressed4 =true;
                    setState((){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  const HelpProgressPage()));

                    });
                  }

                }:null,
                    style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),

                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16,left: 74,bottom: 16,right: 74),
                      child: Text(
                          'CONTINUE'
                      ),
                    )),
              )



            ],
          ),
        ),
      ),
    );
  }
}
class HelpProgressPage extends StatefulWidget {
  const HelpProgressPage({Key? key}) : super(key: key);

  @override
  State<HelpProgressPage> createState() => _HelpProgressPageState();
}

class _HelpProgressPageState extends State<HelpProgressPage> {
  bool isPressedC=false;
  bool isPresseda=true;
  bool isPressedb=true;
  bool isPressedc =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(margin: const EdgeInsets.only(right:24 ,top:26 ,left: 17),
                child: SingleChildScrollView(physics: const NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(icon:const Icon(Icons.arrow_back_ios),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PickGoalPage()));

                          },
                          iconSize: 30,color: const Color(0xff009FFF),),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(flex:7,child: LinearPercentIndicator(
                        barRadius: const Radius.circular(25),
                        animation: true,
                        animationDuration: 1000,
                        percent: 1,
                        lineHeight: 12,
                        backgroundColor:const Color(0xffCFCFCF) ,
                        progressColor: const Color(0xff009FFF),),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Column(
                children: [
                  SingleChildScrollView(
                    child: Container(height: 50,padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                      child: const Text('Want us to help you keep your progress?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),),
                    ),
                  ),
                  const SizedBox(height: 43,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton(
                      onPressed:isPresseda? () {
                       if(isPresseda=true){
                         setState((){
                           isPressedC =true;
                         });
                       }
                      }:null,
                      style: ElevatedButton.styleFrom(primary: const Color(0xff4267B2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Image.asset('images/facebook.png',width:14 ,height:22 ,color: const Color(0xfffffFFF),scale: 0.5,
                        ),
                          const SizedBox(width:15,),
                          const Text('CONTINUE WITH FACEBOOK', style:
                          TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Colors.white
                          ),)

                        ],
                      ),
                    ),),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton(
                      onPressed:isPressedb? () {
                        if(isPressedb=true){
                          setState((){
                            isPressedC =true;
                          });
                        }
                      }:null,
                      style: ElevatedButton.styleFrom(primary: const Color(0xff4285F4),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Image.asset('images/google.png',color: const Color(0xfffffFFF),
                        ),
                          const SizedBox(width:22,),
                          const Text('CONTINUE WITH GOOGLE', style:
                          TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              color: Colors.white
                          ),)

                        ],
                      ),
                    ),),
                  const SizedBox(height: 43,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    height: 50,
                    child: ElevatedButton(
                      onPressed: isPressedc?() {
                        if(isPressedc=true){
                          setState((){
                            isPressedC =true;
                          });
                        }
                      }:null,style: ElevatedButton.styleFrom(primary: const Color(0xffFFFFFF),onPrimary:const Color(0xff888888),
                      textStyle:  const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',

                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                      child: const Text('NOT NOW')
                      ,
                    ),),
                  const SizedBox(height: 310,),
                  Container(margin: const EdgeInsets.only(bottom: 25,right: 31,left: 30),
                    child: ElevatedButton(onPressed:isPressedC? (){
                     if(isPressedC=true){
                       setState((){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => const LessonOnePicPage()));

                       });
                     }
                    }:null,
                        style: ElevatedButton.styleFrom(primary: const Color(0xff009FFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textStyle:const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),

                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 16,left: 74,bottom: 16,right: 74),
                          child: Text(
                              'CONTINUE'
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}










