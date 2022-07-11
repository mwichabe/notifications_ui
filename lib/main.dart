
import 'package:flutter/material.dart';
void main ()=> runApp(MaterialApp(
  home: transaction_history(),
));
class transaction_history extends StatelessWidget {
  Widget landscape()
  {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 20,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text('Transaction History',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0
                    ),),
                ),
                Expanded(
                    flex:2,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.search,color: Colors.black,),
                      label:Text('Search anything',style: TextStyle(color: Colors.grey),),
                      style: ElevatedButton.styleFrom(primary: Colors.grey[100]),
                    )),
                SizedBox(
                  width: 10,
                ),

                Expanded(
                    flex:1 ,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.message_outlined,color: Colors.black,),
                        label:Text(''),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[100]
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex:1,
                    child: ElevatedButton.icon(
                        onPressed: (){},
                        icon:Icon(Icons.notifications_on_outlined,color: Colors.black,),
                        label:Text(''),
                    style:ElevatedButton.styleFrom(
                      primary:Colors.grey[100]
                    ))),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:
              [
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon
                    (onPressed: (){},
                      //color: Colors.grey[100],
                      icon:Icon(Icons.sort,color: Colors.black,),
                      label:Text('Sort',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[100],
                      )
                  )
                ),
                SizedBox(
                  width: 150,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon
                    (onPressed: (){},
                      //color: Colors.grey[100],
                      icon:Icon(Icons.remove_red_eye,color: Colors.black,),
                      label:Text('Show',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black)),
                    style: ElevatedButton.styleFrom
                      (primary: Colors.grey[100]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width:100,
                  ),
                ),
              ]
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: Colors.white,
                    width: 750,
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(10.0),
                    child:Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:3,
                              child: Text('RECEIVER',style: TextStyle(color: Colors.grey),)),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 50,
                            ),
                          ),
                          Expanded(
                              flex:2,
                              child: Text('TYPE',style: TextStyle(color: Colors.grey),)),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 30,
                            ),
                          ),
                          Expanded(
                              flex:2,
                              child:Text('DATE',style: TextStyle(color: Colors.grey),)),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 50,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text('AMOUNT',style: TextStyle(color: Colors.grey),)),
                          Expanded(flex: 1,
                            child: SizedBox(
                              width: 40,
                            ),
                          ),
                          Expanded( flex: 2,
                              child: Text('STATUS',style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 20),
                        ])),
                SizedBox(width: 40),
                Expanded(
                  flex: 5,
                  child:                 Container(
                    width: 400,
                    height: 230,
                    child: Card(
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Row(
                            children: [
                              ElevatedButton.icon
                                (onPressed: (){},
                                icon:Icon(Icons.refresh,color: Colors.black),
                                label:Text(''),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[100]
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('Conversion',style: TextStyle(fontWeight: FontWeight.bold),),
                              Divider(
                                height: 10,
                                color: Colors.grey,
                              )],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Enter Amount'),
                          SizedBox(height: 10.0,),
                          Container(
                            width: 210.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            ),
/*child:Text
                             (
                             'USD'
                           ),*/
                          ),
                          Container(
                            color: Colors.purpleAccent,
                            child: IconButton(
                                onPressed:(){},
                                icon: Icon(Icons.repeat,color: Colors.black,)),
                          ),
                          Container(
                            color: Colors.grey[400],
                            width: 210,
                            height: 30,
                          ),
                          Text('Rate= 14,840.50',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                )],
            ),


          ]
        ),
      ),
    );
  }
  Widget portrait()
  {
    return Center(
      child: Text('The portrait view is under construction',style: TextStyle(fontSize: 32.0,),),
    );
  }
  const transaction_history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: OrientationBuilder
        (
          builder: (BuildContext context, Orientation orientation)
          {if(orientation == Orientation.portrait)
          {
            return portrait();
          }
          else
          {
            return landscape();
          }
          }
      ),
    );
  }
}
