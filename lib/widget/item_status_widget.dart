import 'package:flutter/material.dart';

class ItemStatusWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 6),
      child: ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
           CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            radius: 20,
          ),

            Positioned(
                right: -4,
                bottom: -4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff01c851),
                    shape: BoxShape.circle
                  ),

                    child: Icon(Icons.add,color: Colors.white,)))
      ],
        ),
        title: Text("My status",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        subtitle: Row(
          children: [
            //Icon(Icons.call_made_rounded,color: Color(0xff01c851),),
            //SizedBox(width: 6,),
            Text("Tap to add status update",style: TextStyle(color: Colors.black45),),

          ],
        ),

        //trailing: Icon(Icons.call,color: Color(0xff01c851),),
      ),
    );
  }
}
