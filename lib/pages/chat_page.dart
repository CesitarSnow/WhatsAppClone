import 'package:clonewhatsap/data/data_dummy.dart';
import 'package:flutter/material.dart';

import '../widget/item_chat_widget.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
       itemCount: chats.length,
        itemBuilder: (BuildContext context, int index)
        {
return ItemChatWidget(
chatModel: chats[index],

);


        },



      );
  }
}

