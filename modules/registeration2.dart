import 'package:connectus/modules/reusable/defaultfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen2 extends StatelessWidget {
  RegisterScreen2({Key? key}) : super(key: key);
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: HexColor("#92D3CE"),
        elevation: 0.0,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios) ,onPressed: (){},),
      ),
      body:
      Container(

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
              child: Form(key: formkey,
                child: Column(

                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 60,
                      ),

                      defaultformfield(
                        control: password,
                        label: 'password',
                        prefixicon: Icons.lock,
//color: HexColor("#7DC8CE"),
                        keyboardType: TextInputType.number,
                        onsubmit: (value) {

                        },
                        validate1: (value) =>
                        value.isEmpty ? 'This field shouldn\'t be empty' : null,
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      MainButton(label: "Sign Up", onpressed: (){
                           if(formkey.currentState!.validate()){
                             Navigator.of(context).pushNamed('home');
                           }
                      }, color:HexColor("#E2FDCC") ),




                      SizedBox(
                        height: 20,
                      ),

Text('By signing up, you agree to Photo’s Terms of Service and Privacy Policy.',style: TextStyle(
  color: HexColor("#FF8981")
),)
                    ]),
              ),
            ),
          ),
        ),
      ),
    );




  }
}




