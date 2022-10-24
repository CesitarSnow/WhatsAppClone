import 'package:clonewhatsap/data/data_dummy.dart';
import 'package:clonewhatsap/models/chat_message_model.dart';
import 'package:clonewhatsap/widget/item_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  String val1 = "";

  String val2 = "me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            SizedBox(
              width: 9,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "last seen today 2:20 pm",
                    style: TextStyle(fontSize: 14, color: Colors.white54),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        children: [
          //fondo
          Align(
            alignment: Alignment.center,
            child: Container(
              //width: 300,
              // height: 300,
              color: Colors.black.withOpacity(0.07),
            ),
          ),
          //listado de mensajes


          ListView.builder(
              itemCount: chatsMessageList.length,
              itemBuilder: (BuildContext context, int index){
                return Align(
                  alignment: chatsMessageList[index].messageType =="me" ? Alignment.topRight: Alignment.topLeft ,
                  child: Container(
                      padding: EdgeInsets.all(14),
                      margin: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft:chatsMessageList[index].messageType =="me" ? Radius.circular(20): Radius.circular(0),
                          bottomLeft:Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: chatsMessageList[index].messageType =="me" ? Radius.circular(0): Radius.circular(20),
                        ),
                        color: chatsMessageList[index].messageType == "me" ? Color(0xffE3FFC4): Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              offset: Offset(4,4),
                              blurRadius: 10
                          )
                        ],
                      ),
                      child: Text("${chatsMessageList[index].messaContetn}")),
                );
              },



          ),




          //imput de nuevo mensaje
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.sentiment_satisfied_alt,
                            size: 30,
                            color: Colors.black45,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.attach_file,
                                    size: 30,
                                    color: Colors.black45,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 30,
                                    color: Colors.black45,
                                  ))
                            ],
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                        ),
onChanged: (String value){
val1 = value;
},
                      )

                      ),
                      GestureDetector(
                        onTap: () {
                          ChatMessageModel message =  ChatMessageModel(messaContetn: val1, messageType: val2,);
                        chatsMessageList.add(message);
                        setState(() {

                        });

                          },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff075E55),
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
