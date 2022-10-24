import 'package:clonewhatsap/models/chat_message_model.dart';
import 'package:clonewhatsap/models/chat_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Ramon",
    message: "Gracias por enviarlo",
    time: "12.50",
    countMessage: 2,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Pepito",
    message: "hakuna matata",
    time: "12.00",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "lucho",
    message: "Una forma de ser",
    time: "12.10",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Frank",
    message: "Sin preocuparse, es como hay que vivir",
    time: "12.20",
    countMessage: 1,
    isTyping: true,
  ),
];

List<ChatMessageModel> chatsMessageList = [
  ChatMessageModel(
    messaContetn: "Hola, esta todos bien por ahi",
    messageType: "other",
  ),
  ChatMessageModel(
    messaContetn: "Hola, si, saldre a ver a mi flaquita",
    messageType: "me",
  )
];
