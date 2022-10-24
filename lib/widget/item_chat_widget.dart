import 'package:clonewhatsap/data/data_dummy.dart';
import 'package:clonewhatsap/models/chat_model.dart';
import 'package:clonewhatsap/pages/chat_datail_page.dart';
import 'package:flutter/material.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel chatModel;

  ItemChatWidget({
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 30,
          backgroundImage: NetworkImage("${chatModel.avatarUrl}"),
        ),
        title: Text(
          "${chatModel.username}",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          chatModel.isTyping == true ? "is typying..." : chatModel.message,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: chatModel.isTyping == true ? Colors.green : Colors.black45,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            chatModel.countMessage > 0
                ? Text(
                    "${chatModel.time}",
                    style: TextStyle(fontSize: 12, color: Color(0xff01c851)),
                  )
                : Text(
                    "${chatModel.time}",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
            if ((chatModel.countMessage) > 0)
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xff01c851), shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text(
                    "${chatModel.countMessage}",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ))
            else
              SizedBox(),
          ],
        ),
      ),
    );
  }
}
