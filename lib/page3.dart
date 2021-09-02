
import 'package:finallyjob/page4.dart';
import 'package:finallyjob/widget.dart';
import 'package:flutter/material.dart';

import 'objContainAllData.dart';

class Page3 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page3> {
  @override
  var formKey = GlobalKey<FormState>();

  var enterController = TextEditingController();
  var re_enterController = TextEditingController();
  bool _obsecure = true;
  bool _obsecure2 = true;

  Widget build(BuildContext context) {
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
                  'Set Up Your Password',
                  Colors.pink.shade300,
                  Colors.pink.shade300,
                  Colors.pink.shade300,
                  Colors.grey[300],
                ),
                SizedBox(
                  height: 60,),
                Container(

                  child: defaultFormField(
                    onChange: (val)
                    {
                      Terminal.password = val;
                    },
                    obs: _obsecure,
                    controller: enterController,
                    type: TextInputType.visiblePassword,

                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    icon: IconButton(
                      icon: Icon(
                         _obsecure? Icons.visibility :Icons.visibility_off,
                          color: Colors.pink.shade300,
                      ),

                      onPressed: ()
                      {
                        setState(() {
                          _obsecure =! _obsecure ;
                        });
                      },
                    ),

                    label: 'Enter password',
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey[200],
                      fontWeight: FontWeight.w400,

                    ),

                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Container(

                  child: defaultFormField(
                    onChange: (val)
                    {
                      Terminal.re_enterpassword = val;
                    },
                    controller: re_enterController,
                    type: TextInputType.visiblePassword,
                    obs: _obsecure2,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    icon: IconButton(
                      icon: Icon(
                          _obsecure2? Icons.visibility :Icons.visibility_off,
                          color: Colors.pink.shade300,
                      ),

                      onPressed: ()
                      {
                        setState(() {
                          _obsecure2 =! _obsecure2 ;
                        });
                      },
                    ),

                    label: 'Re_enter password',
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey[200],
                      fontWeight: FontWeight.w400,

                    ),

                  ),

                ),

                SizedBox(
                  height: 422,
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
                              return Page4();
                            }));
                          }
                        }


                    ),
                  ),
                ),
              ],
            ),
          ),),),
    );
  }
}