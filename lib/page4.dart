
import 'package:finallyjob/widget.dart';
import 'package:flutter/material.dart';

import 'objContainAllData.dart';

class Page4 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(

        backgroundColor: Colors.white,
        body: Padding(
        padding: const EdgeInsets.all(30),
    child: SingleChildScrollView(

    //  physics: NeverScrollableScrollPhysics(),
    child: Form(
    key: formKey,
    child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,

    children: [
      buildRegister(
        'Registration Complete!',
        Colors.pink.shade300,
        Colors.pink.shade300,
        Colors.pink.shade300,
        Colors.pink.shade300,
      ),
      SizedBox(
        height: 120,
      ),

       Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.check,size: 55,color: Colors.white,
              ),
            ),
            SizedBox(height: 30,),

                  Text('Your account registration is now complete!',

                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 28,),
                  Text('you have now successfully registered for the portal.',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                    ),),
                  SizedBox(height: 22,),
                  Text('start adding bags and trips to begin your adventure.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),


            SizedBox(height: 200),
       Center(
        child: Container(
          height: 44,
          width: double.infinity,
          child: RaisedButton(

              color: Colors.pink.shade300,
              child: Text('Finish',style: TextStyle(color: Colors.white,fontSize: 17),),
              onPressed: ()
              {
           setState(() {

            print(Terminal.fullName);
            print(Terminal.email);
            print(Terminal.phone);
            print(Terminal.country);
            print(Terminal.city);
            print(Terminal.street);
            print(Terminal.state);
            print(Terminal.nationalID);
            print(Terminal.password);
            print(Terminal.re_enterpassword);

           });
              }


          ),
        ),
      ),
         ],
      ),
 // print(Terminal.fullName);
    ),),
        ),


    );
  }
}
