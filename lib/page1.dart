
import 'package:finallyjob/page2.dart';
import 'package:finallyjob/widget.dart';
import 'package:flutter/material.dart';

import 'objContainAllData.dart';

class Page1 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  var countryController =TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var streemController = TextEditingController();
  var buiodingController = TextEditingController();
  var buiod2Controller = TextEditingController();
  var floorController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(

          child:  Form(
            key:  formKey,
            child:  Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children: [
                buildRegister(
                  'Address Details',
                  Colors.pink.shade300,
                  Colors.grey[300],
                  Colors.grey[300],
                  Colors.grey[300],
                ),
                SizedBox(
                  height: 60,),

                Row(
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,

                    ),
                    ),

                    SizedBox(
                      width: 134,
                    ),
                    Text(
                      'City',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,

                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      width: 165,
                      child: defaultFormField(
                        onChange: (val)
                        {
                          Terminal.country = val;
                        },
                        controller: countryController,
                        type: TextInputType.text,
                        validate: (String value)
                        {
                          if(value.isEmpty) {
                            return 'country must not be empty';
                          }
                          return null ;
                        },
                        icon : Icon(Icons.keyboard_arrow_down_outlined,
                          color: Colors.pink.shade300,size: 22,),
                        label: 'egypt',
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),

                    Container(
                      width: 165,
                      child: defaultFormField(
                        onChange: (val)
                        {
                          Terminal.city = val;
                        },
                        controller: cityController,
                        type: TextInputType.text,
                        validate: (String value)
                        {
                          if(value.isEmpty) {
                            return 'city must not be empty';
                          }
                          return null ;
                        },
                        icon : Icon(Icons.keyboard_arrow_down_outlined,
                          color: Colors.pink.shade300,size: 22,),
                        label: 'cairo',
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 36,
                ),

                Text(
                  'State',
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
                      Terminal.state = val;
                    },
                    controller: stateController,
                    type: TextInputType.text,
                    validate: (String value)
                    {
                      if(value.isEmpty) {
                        return 'State must not be empty';
                      }
                      return null ;
                    },
                    icon : Icon(Icons.keyboard_arrow_down_outlined,
                      color: Colors.pink.shade300,size: 22,),
                    label: 'egypt',
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,

                    ),

                  ),
                ),

                SizedBox(
                  height: 36,
                ),

                Text(
                  'Street',
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
                      Terminal.street = val;
                    },
                    controller: streemController,
                    type: TextInputType.text,
                    validate: (String value)
                    {
                      if(value.isEmpty) {
                        return 'Street must not be empty';
                      }
                      return null ;
                    },
                    label: '4987 Cameron Road',
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,

                    ),

                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    buildingNo('building No',),
                    SizedBox(
                      width: 21,
                    ),

                    buildingNo('floor No'),
                    SizedBox(
                      width: 21,
                    ),
                    buildingNo('building No'),
                  ],
                ),

                SizedBox(
                  height: 140,),
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
                              return Page2();
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

