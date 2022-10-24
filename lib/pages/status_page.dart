import 'package:clonewhatsap/widget/item_status2_widget.dart';
import 'package:clonewhatsap/widget/item_status_widget.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemStatusWidget(),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(left: 3,top: 0,bottom: 5),
          padding: EdgeInsets.all(10),
          child: Row(

            children: [

            Text("Recent Updates",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff075E55)),),


          ],),
        ),
        ItemStatus2Widget(),
      ],
    );
  }
}
