import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Result.dart';

class Home_Screen extends StatefulWidget{
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool isMale=false,isFemale=false;
  double height=120.0;
  int age =0,weight=0;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff151828),
      appBar: AppBar(
        title: Text(
          "Bmi Calculator",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',

          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1d1e34),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=true;
                        isFemale=false;
                      });


                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isMale
                            ?Color(0xffe73c66)
                            :Color(0xff323143),
                      ),
                      height: 150,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text("Male",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,

                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                 child: GestureDetector(
                   onTap: (){
                     setState(() {
                       isMale=false;
                       isFemale=true;
                     });


                   },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isFemale
                        ?Color(0xffe73c66)
                        :Color(0xff323143),
                      ),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text("Female",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,

                          ),)
                        ],
                      ),
                    ),
                ),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff323242),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 170,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toStringAsFixed(2),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: (value){
                        setState(() {
                        height=value;

                        });
                      },
                      max: 200.0,
                      min: 20.0,
                      activeColor: Color(0xffe73c66),
                      inactiveColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
                padding:const EdgeInsets.all(8.0),
              child:  Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,

                      decoration: BoxDecoration(
                        color: Color(0xff323242),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "$age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff8a8b9d),
                                  shape: CircleBorder(),

                                ),
                                  onPressed: (){
                                    setState(() {
                                      if(age>0) age--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                              SizedBox(width: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff8a8b9d),
                                    shape: CircleBorder(),

                                  ),
                                  onPressed: (){
                                    setState(() {
                                    age++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ],
                          )
                        ],
                      ),

                      ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 150,

                      decoration: BoxDecoration(
                        color: Color(0xff323242),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "$weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff8a8b9d),
                                    shape: CircleBorder(),

                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if(weight>0) weight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                              SizedBox(width: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff8a8b9d),
                                    shape: CircleBorder(),

                                  ),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  var bmiCalc=weight/((height/100)*(height/100));
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultScreen(bmi: bmiCalc);
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffe73c66),
                  ),
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  width: double.infinity,
                  height: 50,
                
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
