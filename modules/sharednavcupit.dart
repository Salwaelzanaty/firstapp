import 'package:connectus/cubit/cubit.dart';
import 'package:connectus/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class sharednav extends StatelessWidget {
  const sharednav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConnectCubit(),
      child: BlocConsumer<ConnectCubit, ConnectStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ConnectCubit cubit = ConnectCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: HexColor("#92D3CE"),
              elevation: 0.0,
              title: Center(
                  child: Text(
                cubit.titles[cubit.CurrentIndex],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              )),
            ),
            body: cubit.screens[cubit.CurrentIndex],
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.CurrentIndex,
                backgroundColor: HexColor("#92D3CE"),
                selectedItemColor: Colors.white,
                unselectedItemColor: HexColor("#C9F0CC"),
                onTap: (index) {
                  cubit.changescreen(index);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home,size: 30,), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.info_outlined,size: 30), label: 'About us'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat_sharp,size: 30), label: 'Chats'),
                ]),
          );
        },
      ),
    );
  }
}
