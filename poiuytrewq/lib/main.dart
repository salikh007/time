import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hijri/hijri_calendar.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ght(),
    )
  );
}
class ght extends StatefulWidget {
  const ght({super.key});

  @override
  State<ght> createState() => _ghtState();
}

class _ghtState extends State<ght> {
  DateTime vaqt = DateTime.now();
  dynamic textlivaqt = "";
  dynamic textli = "";
   dynamic text = "";
   dynamic tet = "";
 HijriCalendar _today = HijriCalendar.now();
  void fun(){
    setState(() {
      vaqt = DateTime.now();
      textlivaqt = DateFormat("SSS").format(vaqt);
      textli = DateFormat("yyyy-MM-dd").format(vaqt);
      text = DateFormat("HH:mm:ss").format(vaqt);
     tet = _today.toFormat(" yyyy");
    });
    Future.delayed(Duration(milliseconds: 1),fun);
  }
  void initState() {
    super.initState();
    fun();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 440),
          child: CircleAvatar(
            child: Text(textlivaqt),
            radius: 30,
            backgroundColor: Colors.blue,
          ),
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
          child: Center(child: Text(textli,style: TextStyle(fontSize: 50),)),
        ),SizedBox(height: 30,),
        Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
          child: Center(child: Text(text,style: TextStyle(fontSize: 50),)),
        ),SizedBox(height: 30,),
         Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
          child: Center(child: Text(tet,style: TextStyle(fontSize: 50),)),
        ),
      ],
    ),
    );
  }
}