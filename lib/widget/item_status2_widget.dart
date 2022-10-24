import 'package:flutter/material.dart';

class ItemStatus2Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 6),
      child: ListTile(
        leading:
           CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            radius: 20,
          ),




        title: Text("Porfesor de Flutter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        subtitle: Row(
          children: [
            //Icon(Icons.call_made_rounded,color: Color(0xff01c851),),
            //SizedBox(width: 6,),
            Text("Just Now",style: TextStyle(color: Colors.black45),),

          ],
        ),

        //trailing: Icon(Icons.call,color: Color(0xff01c851),),
      ),
    );
  }
}
