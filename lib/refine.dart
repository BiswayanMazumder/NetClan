import 'package:blackcoffer/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Menu'),
        ),
        body: Center(
          child: Refine(),
        ),
      ),
    );
  }
}

class Refine extends StatefulWidget {
  @override
  _RefineState createState() => _RefineState();
}

class _RefineState extends State<Refine> {
  String? selectedOption = 'SOS/Emergency! Need Asistance! HELP';
  double _sliderValue = 1.0;
  double _minSliderValue = 1.0;
  double _maxSliderValue = 100.0;
  bool coffee=false;
  bool business=false;
  bool hobbies=false;
  bool friendship=false;
  bool movies=false;
  bool dinning=false;
  bool dating=false;
  bool matrimony=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage(),));
        }, icon: Icon(CupertinoIcons.back,color: Colors.white,)),
        title: Text('Refine',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30), // Add some space between the TextField and Dropdown
            Text('Select Your Avaliability',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            // Use DropdownButtonFormField below the TextField
            DropdownButtonFormField<String>(
              value: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              items: [
                'Avaliable/Hey Let Us Connect',
                'Away/Stay Discrete And Watch',
                'Busy/Do Not Disturb/ Will Catch Up Later',
                'SOS/Emergency! Need Asistance! HELP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                );
              }).toList(),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Colors.black)
                ), // Add a border around the TextField
              ),
            ),
            SizedBox(
                height: 20),
            Text('Add Your Status',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 250,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Colors.black)
                ), // Add a border around the TextField
              ),
            ),
            SizedBox(
                height: 20),
            Text('Select Hyper local Distance',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Slider(
                  value: _sliderValue,
                  min: _minSliderValue,
                  max: _maxSliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('1 Km',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('100 Km',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(
                height: 20),
            Text('Select Purpose',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    coffee=!coffee;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(coffee?Colors.blue:Colors.white)
                    ),
                    child: Text('Coffee',style: TextStyle(
                        color: coffee?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    business=!business;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(business?Colors.blue:Colors.white)
                    ),
                    child: Text('Business',style: TextStyle(
                        color: business?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    hobbies=!hobbies;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(hobbies?Colors.blue:Colors.white)
                    ),
                    child: Text('Hobbies',style: TextStyle(
                        color: hobbies?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    movies=!movies;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(movies?Colors.blue:Colors.white)
                    ),
                    child: Text('Movies',style: TextStyle(
                        color: movies?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    dinning=!dinning;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(dinning?Colors.blue:Colors.white)
                    ),
                    child: Text('Dinning',style: TextStyle(
                        color: dinning?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    dating=!dating;
                  });
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(dating?Colors.blue:Colors.white)
                    ),
                    child: Text('Dating',style: TextStyle(
                        color: dating?Colors.white:Colors.blue
                    ),)),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage(),));
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade900)),
                    child: Text('Save And Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
