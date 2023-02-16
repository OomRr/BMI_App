import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final int age,result;
  final bool isMale;
  const BmiResultScreen({super.key,
    required this.age,
    required this.result,
    required this.isMale,
  });
  //const BmiResultScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 110,
        backgroundColor : const Color(0xFF03002e),
        title:
        const Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF03002e),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF010048),
                      borderRadius: BorderRadius.circular(30,),
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Gender : ${isMale?'Male':'Female'}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF010048),
                      borderRadius: BorderRadius.circular(30,),
                    ),
                    width: double.infinity,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Result : $result',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF010048),
                      borderRadius: BorderRadius.circular(30,),
                    ),
                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age : $age',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
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
    );
  }
}
