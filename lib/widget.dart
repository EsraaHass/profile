
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required Function validate,
  @required String label,
  TextStyle textStyle ,
  Function onSubmit,
  Widget icon ,
  bool obs = false,
  Function onTap,
  Function onChange,
  bool isClickable = true,
}) =>
    TextFormField(

      obscureText: obs,
      controller: controller,
      enabled: isClickable,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: icon,
        labelText: label,
        labelStyle: textStyle,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade100),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade100),
        ),

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade100),
        ),

      ),
    );

Widget buildDashed(
    {@required Widget child}) => DottedBorder(
  color:  Colors.grey[200],
  strokeWidth: 2,
  borderType: BorderType.Circle,
  dashPattern: [12,4],
  child: child,
);


Widget buildRegister
    (
  @required String title,
  @required Color color1,
  @required Color color2,
  @required Color color3,
  @required Color color4,
)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 40,
      ),
      Row(
        children: [
          Icon(Icons.arrow_back_ios),
          SizedBox(width: 8,),
          Text('Register',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),),

        ],
      ),


      SizedBox(
        height: 35,
      ),
      Text(
        title,style: TextStyle(
        fontSize: 15,
        fontWeight:FontWeight.w700,

      ),),

      SizedBox(height: 22,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: color1,
            ),
            width: 72,
            height: 5,
          ),
          SizedBox(
            width: 16,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: color2,
            ),
            width: 72,
            height: 5,
          ),
          SizedBox(
            width: 16,),
          Container (
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: color3,
            ),
            width: 72,
            height: 5,
          ),
          SizedBox (
            width: 16,),
          Container (
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: color4,
            ),
            width: 72,
            height: 5,
          ),
        ],
      ),
    ],
  );
}

Widget buildText
(
    @required String title,
)
{
  return  Text(
    title,style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,

  ),);
}

Widget buildingNo (@required String lab,)
{
  return Container(
    width: 100,
    child: defaultFormField(
      controller: TextEditingController(),
      type: TextInputType.number,
      validate: (String value)
      {
        if(value.isEmpty) {
          return 'this field empty';
        }
        return null ;
      },
      label: lab,
      textStyle: TextStyle(
        fontSize: 13,
        color: Colors.blueGrey[100],
        fontWeight: FontWeight.w800,

      ),

    ),
  );
}

Widget buildCountry ()
{
  return Container(
    width: 165,
    child: defaultFormField(
      controller: TextEditingController(),
      type: TextInputType.text,
      validate: (String value)
      {
        if(value.isEmpty) {
          return 'country must not be empty';
        }
        return null ;
      },
      icon : Icon(Icons.keyboard_arrow_down_outlined,color: Colors.red[400],size: 22,),
      label: 'egypt',
      textStyle: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400,

      ),
    ),
  );
}



