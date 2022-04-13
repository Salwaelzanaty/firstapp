import 'package:connectus/modules/reusable/defaultfield.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#92D3CE"),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              HexColor("#E2FDCC"),
              HexColor("#92D3CE"),
            ],
            center: Alignment.center,
            radius: .8,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formkey,
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultformfield(
                    control: email,
                    label: 'Email',
                    prefixicon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    onsubmit: (value) {
                      print(value);
                    },
                    validate1: (value) =>
                        value.isEmpty ? 'This field shouldn\'t be empty' : null,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  defaultformfield(
                    control: password,
                    label: 'password',
                    prefixicon: Icons.lock,
//color: HexColor("#7DC8CE"),
                    keyboardType: TextInputType.number,
                    onsubmit: (value) {
                      print(value);
                    },
                    validate1: (value) =>
                        value.isEmpty ? 'This field shouldn\'t be empty' : null,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  MainButton(label: "Next", onpressed: (){
                    if(formkey.currentState!.validate())
                    {  Navigator.of(context).pushNamed('home');}

                  }, color:HexColor("#E2FDCC") ),

                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Register');
                    },
                    child: Text(
                      'Don\'t have an account',
                      style: TextStyle(color: HexColor("#FF8981")),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
