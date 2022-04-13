import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart' show HexColor;




Widget defaultformfield({
  double cursorWidth = 2.0,
  required TextEditingController control,
  required String label,
   IconData? prefixicon ,
  required keyboardType,
  required onsubmit,
  IconData suf = Icons.access_time_filled_outlined,
  required validate1,
}) =>
    TextFormField(
      cursorWidth: cursorWidth,
      controller: control,
      onFieldSubmitted: onsubmit,
      keyboardType: keyboardType,
      validator: validate1,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixicon),
        labelText: label,
        fillColor: HexColor("#7DC8CE"),
        enabledBorder: (
        OutlineInputBorder(
          borderSide:BorderSide (color:HexColor("#7DC8CE"),width: 2),
          borderRadius:BorderRadius.circular(20)
        )
        )
      ),

    );




Widget MainButton({
  double height=60,
  double width=300,
  required String label,
  required onpressed(),
   color,

})
{
  return SizedBox(
  height: height,
  width: width,
child :ElevatedButton(onPressed:onpressed,
  child: Text(label,style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: HexColor("#50555C"),
  ),),
  style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20))
    ),
backgroundColor: MaterialStateProperty.all<Color>(color)
  ),
)
  );
}
