import 'package:connectus/modules/reusable/defaultfield.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Column(
                    children: [
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
                        child: Column(
                          children: [
                           const Image(image: AssetImage('images/connect.png')),
                             SizedBox(
                              height: 70,
                            ),
                            Text(
                              'OR',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: HexColor("#FFFFFF")),
                            ),
                            MainButton(
                                label: "Login",
                                onpressed: () {
                                  Navigator.of(context).pushNamed('Login');
                                },
                                color: HexColor("#E2FDCC")),
                            SizedBox(
                              height: 20,
                            ),
                            MainButton(
                                label: "Register",
                                onpressed: () {Navigator.of(context).pushNamed('Register');},
                                color: HexColor("#E2FDCC"))
                          ],
                        ),
                      )
            ]),
                    ],
                  ),
            )
              ),
            ),



    );
  }
}
