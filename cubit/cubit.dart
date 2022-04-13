
import 'package:connectus/cubit/states.dart';
import 'package:connectus/modules/screens/about.dart';
import 'package:connectus/modules/screens/chat.dart';
import 'package:connectus/modules/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectCubit extends Cubit<ConnectStates>
{
  ConnectCubit() : super(initstate());
  static ConnectCubit get(context)=>BlocProvider.of(context);

  List <Widget> screens=
  [ const homescreen(),
    const ChatScreen(),
    const AboutScreen(),
  ];

  List<String>titles=
  [
    'Home',
    'About',
    'Chats',
  ];
  int CurrentIndex=0;
  void changescreen(index)
  {
    CurrentIndex=index;
    emit(changescreenstate());
  }
}