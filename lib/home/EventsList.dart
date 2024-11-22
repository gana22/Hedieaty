import 'package:flutter/material.dart';

class EventslistPage extends StatefulWidget {


  @override
  State<EventslistPage> createState() => _EventslistPageState();
}



class _EventslistPageState extends State<EventslistPage>  {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child:Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.blue,),
              //color: Colors.red,
              child:Center(child:  eventInfo("brithday part",true),)

          ), ),
        SizedBox(height: 5,),

        Padding( padding: const EdgeInsets.all(16.0),
          child:Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.blue,),
              //color: Colors.red,
              child:Center(child:  eventInfo("grad party",false),)

          ), ),
      ],


    );

  }
  Widget eventInfo(String Eventtitle, bool Ispublished){
    if(Ispublished){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox( width: 30,),
              Icon(Icons.event_available_outlined),
              const SizedBox( width: 5,),
              TextButton(onPressed: (){}, child: Text(Eventtitle , style: const TextStyle(color: Colors.white,fontFamily: "free",fontWeight: FontWeight.bold, fontSize: 20,),))

            ],
          ),


        ],
      );
    }
    else{
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox( width: 30,),
              Icon(Icons.event_available_outlined),
              const SizedBox( width: 5,),
              TextButton(onPressed: (){}, child: Text(Eventtitle , style: const TextStyle(color: Colors.white,fontFamily: "free",fontWeight: FontWeight.bold, fontSize: 20,),)),
              const SizedBox( width: 30,),
              ElevatedButton(onPressed: () {  }, child: Text("edit",style: const TextStyle(color: Colors.black,fontFamily: "free",fontWeight: FontWeight.bold, fontSize: 18,),),),
              const SizedBox( width: 10,),
              ElevatedButton(onPressed: () {  }, child: Text("publish",style: const TextStyle(color: Colors.black,fontFamily: "free",fontWeight: FontWeight.bold, fontSize: 18,),),),

            ],
          ),





        ],
      );
    }



  }

}