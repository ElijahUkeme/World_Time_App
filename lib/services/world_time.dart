import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime{

  String location ;
  String time = "" ;
  String flag ;
  String url ;
  bool isDaTime =true;

  WorldTime({required this.location,required this.flag,required this.url});
   Future<void> getTime() async {

     try{
       Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
       Map data = jsonDecode(response.body);
       String datetime = data['datetime'];
       String offset = data['utc_offset'].substring(1,3);

       DateTime now = DateTime.parse(datetime);
       now =now.add(Duration(hours: int.parse(offset)));

       isDaTime = now.hour > 6 && now.hour < 20 ? true: false;

       //set the time property
       time = DateFormat.jm().format(now);
       print(time);

     }catch(e){
       print(e);
       time= "Error, couldn't get the time";
     }

  }
}
