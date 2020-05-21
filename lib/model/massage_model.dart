import 'package:messanger/model/user_model.dart';

class Message {
  final User sender;
  final String text;
  final String time;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(id: 0, name: 'chathura', imageUrl: 'images/1.jpg');
final User smith = User(id: 1, name: 'chathura', imageUrl: 'images/2.jpg');
final User john = User(id: 2, name: 'chathura', imageUrl: 'images/3.jpg');
final User william = User(id: 3, name: 'chathura', imageUrl: 'images/4.jpg');
final User martin = User(id: 4, name: 'chathura', imageUrl: 'images/5.jpg');

List<User> favourites=[currentUser,smith,john,william,martin];

List<Message> chats=[
  Message(text: "Hello",isLiked: true,sender: smith,time: "10.22",unread: true),
  Message(text: "Hello how are you?",isLiked: true,sender: john,time: "11.22",unread: false),
  Message(text: "i'm fine",isLiked: true,sender: william,time: "10.52",unread: true),
  Message(text: "whats up bro",isLiked: true,sender: martin,time: "15.22",unread: false),

];


