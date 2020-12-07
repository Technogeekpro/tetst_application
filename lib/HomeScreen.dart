import 'package:flutter/material.dart';

//Todo StatefulWidget

class HomeScreenn extends StatefulWidget {
  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {





  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void increment(){
    setState(() {
      number = number+1;
    });
  }

  void decrement(){
    setState(() {
      number = number-1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Increment"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children:[
            Text(number.toString(),style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold,color: Colors.pink),),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  RaisedButton(child: Text("+"),onPressed: increment,color: Colors.red,),
                  SizedBox(width: 20),
                  RaisedButton(child: Text("-"),onPressed: decrement,color:Colors.green),

            ],
          ),
          ]
        ),
      )
    );
  }
}
