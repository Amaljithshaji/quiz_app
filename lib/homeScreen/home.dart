

import 'package:flutter/material.dart';
import 'package:quiz_app/homeScreen/result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //int _questIndex = 0;
  //int _score = 0;
  int _score=0;
  int? score;
  int? valuex; 
  int? selectedIndex;
  final PageController _pageController = PageController();
    int _currentPage = 0;

  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'Which is the most sensitive organ in our body?',
      'option': [ 'eyes', 'ears', 'nose', 'skin'],
      'correctAnswer': 3,
    },
    {
      'question': 'Brain of computer is?',
      'option': ['Keyboard', 'CPU', 'Monitor', 'Mouse'],
      'correctAnswer': 1,
    },
    {
      'question': ' How many days are there in a Leap year ?',
      'option': ['364', '365', '366', '367'],
      'correctAnswer': 2,
    },
    {
      'question': 'India lies in which continent?',
      'option': ['North America', 'Africa', 'Asia', 'Antarctica'],
      'correctAnswer': 2,
    },
    {
      'question': 'Which country are the Giza Pyramids in ?',
      'option': ['Egypt', 'India', 'America', 'Finland'],
      'correctAnswer': 0,
    },
    {
      'question': '1024 Kilobytes is equal to ?',
      'option': ['1pb', '1gb', '1tb', '1mb'],
      'correctAnswer': 3,
    },
    {
      'question': 'Which is the longest river on the earth ?',
      'option': ['Amazon River', 'Nile River', 'Yangtze River', 'Mississippi River'],
      'correctAnswer': 1,
    },
    {
      'question': 'Smallest state of India is?',
      'option': ['Kerala', 'Tamil Nadu', 'Assam', 'Goa'],
      'correctAnswer': 3,
    },
    {
      'question': 'Most widely spoken language in the world is?',
      'option': ['Mandarin', 'English', 'Spanish', 'Hindi'],
      'correctAnswer': 0,
    },
    {
      'question': 'Largest island in the world is?',
      'option': ['Madagascar', 'Borneo', 'Green Land', 'New Guinea'],
      'correctAnswer': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff422bc7),
        body: PageView.builder(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
            itemCount: quizData.length,
            itemBuilder: (context, index) {
              final questionData = quizData[index];
              
             // final question = questionData['question'] as String;
              final options = questionData['option'] ;
             // bool isSelected =false;

              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
        
      
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        width: 320,
                        height: 201,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff1cafba),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Text("Question.${index+ 1}",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                                      SizedBox(height: 20,),
                              Center(
                                child: Text(quizData[index]['question'] as String,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 350,
                      height: 400,
                      child:
                      
                       ListView.builder(
                        shrinkWrap: true,
                        itemCount: options.length,
                        itemBuilder: (context, optionIndex) {
                          final option = options[optionIndex];
                          
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  valuex = optionIndex;
                                  print(valuex);
                                 valuex ==quizData[index]['correctAnswer'] ?
                                 _score++: print(_score);
                                });
                              },
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                      width: 318,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: valuex == optionIndex?
                                        valuex ==quizData[index]['correctAnswer']
                                            ? Color(0xff03C03C)
                                            : Color(0xffEF0107):Color(0xff1cafba),

                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: const Offset(
                                              5.0,
                                              5.0,
                                            ),
                                            blurRadius: 10.0,
                                            spreadRadius: 2.0,
                                          ), //BoxShadow
                                          BoxShadow(
                                            color: Colors.white,
                                            offset: const Offset(0.0, 0.0),
                                            blurRadius: 0.0,
                                            spreadRadius: 0.0,
                                          ), //BoxShadow
                                        ],
                                      ),
                                      child: Center(
                                          child: Text(
                                        option,
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400,
                                          color: 
                                               Colors.black,
                                        ),
                                      )))));
                        },
                      ),
                    ),
                   
                    Ink(
                child: InkWell(
                  onTap: (){
                   if(_currentPage < 9){
                    _pageController.animateToPage(
                      _currentPage + 1, duration: Duration(milliseconds: 500), curve: Curves.ease);
                      print(_currentPage);
                  }
                  _currentPage == 9 ?
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Result(score: _score))):
                  print(_score);
                }, 
                  child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff1cafba),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ))),
                ),
              )

                  ],
                ),
              );
            },
            onPageChanged: (int index) {
              setState(() {
                 _currentPage = index;
                 valuex =null;
                 // Clear selected options when moving to the next question
              });
            }
            ),
            
      ),
    );
    
  }
 @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  
  
  
 
}

      