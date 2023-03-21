// ignore_for_file: camel_case_types, file_names

import 'dart:math';
import 'package:flutter/material.dart';

import 'ResultScreen.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}


class _BMI_CalculatorState extends State<BMI_Calculator> {
   bool   isMale   = false;
   bool   isFemale = false;
   double height   = 150;
   int    age      = 28;
   int    weight   = 50 ;
   String state = "Normal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: true,
      ),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isFemale = false;
                          if(isMale == true){
                            isMale = false;
                          }
                          else {
                            isMale = true;
                          }
                        });
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: const [
                            Icon(
                              Icons.male,
                              size:120.0 ,

                            ),
                            SizedBox(
                                height: 1.0
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : Colors.black45,
                          borderRadius: BorderRadiusDirectional.circular(15.0) ,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false ;
                          //   isFemale = true;
                          if(isFemale == true){
                             isFemale = false;
                          }
                          else{
                            isFemale = true;
                          }
                        });
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: const [
                            Icon(
                                Icons.female,
                                size: 120.0,
                            ),
                            SizedBox(
                                height: 1.0
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color:  isFemale ? Colors.blue : Colors.black45,
                          borderRadius: BorderRadiusDirectional.circular(15.0) ,
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
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
              ),
              child: Expanded(
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width:5 ,
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          min: 80,
                          max: 220,
                          thumbColor: Colors.black,
                          activeColor: Colors.black,
                          inactiveColor: Colors.black45,
                          onChanged:(value){
                            setState(() {
                              height = value;
                            });
                          }  ,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadiusDirectional.circular(15.0) ,
                    ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),

                          ),
                          const SizedBox(
                            height: 3.0 ,
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),

                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,

                                backgroundColor: Colors.black54,
                                child: const Icon(
                                  Icons.remove,
                                ),

                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.black54,
                                child: const Icon(
                                  Icons.add,
                                ),

                              ),
                            ],
                          ),


                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadiusDirectional.circular(15.0) ,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),

                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),

                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.black54,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.black54,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadiusDirectional.circular(15.0) ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 90,
            color: Colors.pink,

            child: MaterialButton(
                textColor: Colors.white,
                onPressed: (){
                  var result = weight / pow(height / 100,2);
                  if(result.round() >=25) {
                    state = "Overweight";
                  } else if(result.round() >=20 && result.round() < 25){
                    state = "Normal";
                  } else{
                    state = "Underweight";
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            isMale : isMale,
                            weight : weight,
                            age : age ,
                            result: result.round(),
                            height: height.round(),
                            state: state,
                          ),
                      )
                  );
                },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
