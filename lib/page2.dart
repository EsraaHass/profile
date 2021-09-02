
import 'package:finallyjob/page3.dart';
import 'package:finallyjob/widget.dart';
import 'package:flutter/material.dart';

import 'objContainAllData.dart';

class Page2 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page2> {
  @override
  var formKey = GlobalKey<FormState>();
  var nationalIdController = TextEditingController();
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
        padding: const EdgeInsets.all(30),
    child: SingleChildScrollView(

     // physics: NeverScrollableScrollPhysics(),
    child:  Form(
    key:  formKey,
    child:  Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,

    children: [

      buildRegister(
        'Attachments',
        Colors.pink.shade300,
        Colors.pink.shade300,
        Colors.grey[300],
        Colors.grey[300],
      ),
      SizedBox(
        height: 60,),


          Text(
        'National ID',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,

        ),
      ),
          SizedBox(
        height: 8,
      ),
          Container(

            child: defaultFormField(
              onChange: (val)
              {
                Terminal.nationalID = val;
              },
              controller: nationalIdController,
              type: TextInputType.number,
              validate: (String value)
              {
                if(value.isEmpty) {
                  return 'National ID must not be empty';
                }
                return null ;
              },
             icon : Icon(Icons.camera_alt_outlined,color: Colors.pink.shade300,size: 22,),
              label: 'placeholder',
              textStyle: TextStyle(
                fontSize: 12,
                color: Colors.blueGrey[200],
                fontWeight: FontWeight.w400,

              ),

            ),

          ),

      SizedBox(
        height: 470,
      ),

      Center(
        child: Container(
          height: 44,
          width: double.infinity,
          child: RaisedButton(

              color: Colors.pink.shade300,
              child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 17),),
              onPressed: () {

                if(formKey.currentState.validate())
                {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                    return Page3();
                  }));
                }
              }


          ),
        ),
      ),

    ],),
    ),
      ),
    ),
    );
  }
}
