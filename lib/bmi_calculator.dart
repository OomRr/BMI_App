import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale=true;
  double height=120.0;
  int age=20,weight=40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 150,
        backgroundColor : const Color(0xFF03002e),
        elevation: 0.0,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Color(0xFF03002e),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(()
                          {
                            isMale=true;
                          }
                          );
                        },
                        child : Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15,),

                            color: isMale?Colors.blue[300]: const Color(0xFF010048),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Blue_male_symbol.svg/2048px-Blue_male_symbol.svg.png"),
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style:TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15,),

                            color:!isMale?Colors.pinkAccent[100]: const Color(0xFF010048),
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  const [
                              Image(
                                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Pink_Venus_symbol.svg/480px-Pink_Venus_symbol.svg.png"),
                                //image: AssetImage('assets/images/Pink_female_symbol.svg.png'),
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style:TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15,),

                    color: const Color(0xFF010048),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline:TextBaseline.alphabetic ,
                        children: [
                          Text(
                            '${height.round()}',
                            style:const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),

                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'CM',
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),

                          ),
                        ],
                      ),
                      Slider(value: height,
                          max: 220,
                          min: 70,
                          onChanged: (value){
                        setState((){
                          height=value;
                        });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF010048),
                          borderRadius: BorderRadius.circular(15,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),

                            ),
                            Text(
                              '${age.round()}',
                              style:const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState((){
                                    age--;
                                  });
                                },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,

                                  ),
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState((){
                                    age++;
                                  });
                                },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF010048),
                          borderRadius: BorderRadius.circular(15,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),

                            ),
                            Text(
                              '${weight.round()}',
                              style:const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState((){
                                    weight--;
                                  });
                                },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,

                                  ),
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState((){
                                    weight++;
                                  });
                                },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0,left: 15,right: 15,),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30,),
                  color: const Color(0xFF010048),
                ),

                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed:(){
                    double result=weight/pow(height/100, 2);
                    Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>BmiResultScreen(age:age,result:result.round(),isMale:isMale),
                    ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
