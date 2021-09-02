
import 'package:finallyjob/page1.dart';
import 'package:finallyjob/widget.dart';
import 'package:flutter/material.dart';

import 'objContainAllData.dart';


class P_view extends StatefulWidget {

  @override
  P_viewState createState() => P_viewState();
}

class P_viewState extends State<P_view> {

  var nameController =TextEditingController();
  var emailController =TextEditingController();
  var numberController =TextEditingController();

  @override

  var formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(

          child: Form(
            key:  formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                 buildRegister(
                     'Personal Details',
                      Colors.grey[300],
                      Colors.grey[300],
                      Colors.grey[300],
                      Colors.grey[300],
                 ),

                   SizedBox(
                    height: 27,),
                   Text(
                      'Profile Picture',style: TextStyle(
                      fontSize: 11,
                    ),),

                  SizedBox(
                    height: 50,
                  ),

                   Center(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          buildDashed(
                            child: CircleAvatar(
                                radius: 55,
                              // backgroundImage: NetworkImage(''),
                                backgroundColor: Colors.grey[200],
                              ),
                          ),

                          InkWell(
                            child: Positioned(
                                bottom: 1.0,
                                right: 1.0,
                                child: Container(
                                  height: 35,
                                  width: 35  ,
                                  child: Icon(
                                    Icons.camera_alt_outlined, color: Colors.white,size: 20,),
                                  decoration: BoxDecoration(
                                    color: Colors.pink.shade300,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),
                            ),
                            onTap: (){},
                          ),
                        ],
                      ),
                    ),

                  SizedBox(
                    height: 25,

                  ),

                  buildText('Full Name'),

                  SizedBox(
                    height: 12,
                  ),

                  defaultFormField(
                    onChange: (val)
                    {
                      Terminal.fullName = val;
                    },
                          controller: nameController,
                          type: TextInputType.text,
                          validate: (String value)
                          {
                           if(value.isEmpty) {
                             return 'name must not be empty';
                           }
                           return null ;
                          },
                          label: 'enter your full name',
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.blueGrey[200],
                          fontWeight: FontWeight.w600,

                        ),
                      ),

                  SizedBox(
                    height: 12,),
                  buildText('Email'),

                  SizedBox(
                    height: 12,),

                     defaultFormField(
                       onChange: (val)
                       {
                         Terminal.email = val;
                       },
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty) {
                            return 'email must not be empty';
                          }
                          return null ;
                        },
                        label: 'enter email address',
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.blueGrey[200],
                          fontWeight: FontWeight.w500,

                        ),
                      ),

                  SizedBox(
                    height: 12,),

                   buildText('Phone Number'),

                  SizedBox(
                    height: 12,),

                     defaultFormField(
                       onChange: (val)
                       {
                         Terminal.phone = val;
                       },
                        controller: numberController,
                        type: TextInputType.phone,
                        validate: (String value)
                        {
                          if(value.isEmpty) {
                            return 'Number must not be empty';
                          }
                          return null ;
                        },
                        label: 'enter your number',
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.blueGrey[200],
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                  SizedBox(

                  height: 100,

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
                          return Page1();
                        }));
                      }
                    }


                ),
              ),
            ),

                ],
              ),

          ),


      ),
      ),
    );
  }

}
