import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


 void setUpWorldTime() async{
   WorldTime instance = WorldTime(location: 'Lagos',flag: 'nigeria.gif',url: 'Africa/Lagos' );
   await instance.getTime();
   Navigator.pushReplacementNamed(context, '/home',arguments: {
     'location': instance.location,
     'flag': instance.flag,
     'time': instance.time,
     'isDaTime': instance.isDaTime

   });
 }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
    body: Center(
      child: SpinKitHourGlass(
        color: Colors.white,
        size: 50.0,
      ),
    ),
    );
  }
}
