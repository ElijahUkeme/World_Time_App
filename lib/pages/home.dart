import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

   data = data.isNotEmpty? data: ModalRoute.of(context)!.settings.arguments as Map;
   print(data);

   // set background image depending if it is day time or night
   String bgImage = data['isDaTime'] ? 'day.png': 'night.png';

   Color? bgColor = data['isDaTime']? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              children: [
                FlatButton.icon(
                  onPressed: () async {
                   dynamic result = await Navigator.pushNamed(context, '/location');
                   setState(() {
                     data = {
                       'time': result['time'],
                       'location': result['location'],
                       'flag': result ['flag'],
                       'isDaTime': result['isDaTime']
                     };
                   });
                  },
                  icon: Icon(
                      Icons.edit_location,
                  color: Colors.grey[300],),
                  label: Text('Choose location here',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text(data['location'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 2.0
                      )
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(data['time'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
