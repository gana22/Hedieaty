import 'package:flutter/material.dart';

class FriendslistPage extends StatefulWidget {


  @override
  State<FriendslistPage> createState() => _FriendslistPageState();
}



class _FriendslistPageState extends State<FriendslistPage>  {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Color(0xF9ABCDED),),
              //color: Colors.red,
              child:Center(child:  friendInfo("Ahmed","3"),)

          ), ),
        SizedBox(height: 5,),

        Padding( padding: const EdgeInsets.all(16.0),
        child:Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
        color: Color(0xF9ABCDED),),
        //color: Colors.red,
        child:Center(child:  friendInfo("Nada","0"),)

        ), ),
      ],


    );
  }
  Widget friendInfo(String FriendName, String NoOfIcomingEvents){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox( width: 30,),
            Icon(Icons.person_2_rounded),
            const SizedBox( width: 5,),
            TextButton(onPressed: (){}, child: Text(FriendName , style: const TextStyle(color: Colors.white,fontFamily: "free",fontWeight: FontWeight.bold, fontSize: 25,),))

          ],
        ),
        Row(
          children: [
            const SizedBox( width: 15,),
            Text("Number of incoming Events:", style: TextStyle(color: Colors.white),),
            const SizedBox( width: 5,),
            Text(NoOfIcomingEvents, style: TextStyle(color: Color(0xF9323333),),),

          ],
        ),

      ],
    );
    
    
  }

}