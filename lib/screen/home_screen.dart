import 'package:chetingapp/screen/message_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchControllar=TextEditingController();
  final AdvancedDrawerController _drawerController=AdvancedDrawerController();

  var datalist=[
    "asset/humaun.jpg",
    "asset/thirdman.jpg",
    "asset/IMG_5256.JPG",
    "asset/IMG_5110.JPG",
    "asset/scandman.jpg",
    "asset/kcg.jpg",
    "asset/humaun.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _drawerController,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.easeInOut,
       animateChildDecoration: true,
       rtlOpening: false,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Container(
            child:Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white60
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("asset/humaun.jpg"),
                                maxRadius: 45,
                                minRadius: 30,
                              ),
                              Positioned(
                                top: 45,
                                left: 50,
                                child:  Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                ),
                                child: Center(
                                  child: Icon(Icons.camera_alt,size: 25,),
                                ),

                              ),)
                            ],
                          )
                        ),
                        SizedBox(height: 10,),
                        Text("AL-FAYEJ ",style: TextStyle(fontSize: 25,
                            fontWeight:FontWeight.bold,
                            color: Colors.black54),),
                        // Text("fayej017fa@gmail.com",style: TextStyle(
                        //     fontSize: 15,
                        //     fontWeight:FontWeight.bold,
                        //     color: Colors.black54),)
                      ],

                    ),
                  ),
                ),
                Divider(height: 5,color: Colors.black,),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.person,size: 25,),
                      ),

                    ),
                    title: Text("Profile ",style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: Colors.black54),),),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.settings,size: 25,),
                      ),

                    ),
                    title: Text("Settins ",style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: Colors.black54),),),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.message_rounded,size: 25,),
                      ),

                    ),
                    title: Text("Message Requests ",style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: Colors.black54),),),
                )
              ],
            ),
          ),
        ),
      child: Scaffold(
       appBar: AppBar(
         leading: IconButton(
           onPressed: (){
             _drawerController.showDrawer();
           },
           icon: ValueListenableBuilder<AdvancedDrawerValue>(
             valueListenable: _drawerController,
             builder: (_, value, __) {
               return AnimatedSwitcher(
                 duration: Duration(milliseconds: 250),
                 child: Icon(
                   value.visible ? Icons.clear : Icons.menu,
                   key: ValueKey<bool>(value.visible),
                 ),
               );
             },
           ),
         ),


         actions: [
           Padding(
             padding: const EdgeInsets.only(top: 10,right: 15,bottom: 10),
                 child: Container(
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                       color: Colors.grey.withOpacity(0.30)
                   ),
                   child: Center(
                     child: Icon(Icons.camera_alt,size: 20,),
                   ),

             ),
             // child: CircleAvatar(
             //   backgroundImage: AssetImage("asset/humaun.jpg"),
             //   maxRadius: 20,
             //   minRadius: 10,
             // ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 10,right: 15,bottom: 10),
             child: Container(
               height: 30,
               width: 30,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(100),
                   color: Colors.grey.withOpacity(0.30)
               ),
               child: Center(
                 child: Icon(Icons.edit,size: 20,),
               ),

             ),
             // child: CircleAvatar(
             //   backgroundImage: AssetImage("asset/humaun.jpg"),
             //   maxRadius: 20,
             //   minRadius: 10,
             // ),
           ),
         ],
         backgroundColor:Colors.white,
         elevation: 0,
         iconTheme: IconThemeData(
           color: Colors.black54
         ),
       ),
        
        // drawer: Drawer(
        //   backgroundColor: Colors.white24,
        //   child: Container(
        //     child:Column(
        //       children: [
        //        Container(
        //          height: 200,
        //          width: double.infinity,
        //          decoration: BoxDecoration(
        //            color: Colors.deepPurple
        //          ),
        //          child: Center(
        //            child: Column(
        //              children: [
        //                  Padding(
        //                    padding: const EdgeInsets.only(top: 40),
        //                    child: CircleAvatar(
        //                     backgroundImage: AssetImage("asset/humaun.jpg"),
        //                      maxRadius: 36,
        //                      minRadius: 12,
        //                    ),
        //                  ),
        //                Text("AL-FAYEJ ",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),),
        //                Text("fayej017fa@gmail.com",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),)
        //              ],
        //
        //            ),
        //          ),
        //        ),
        //         SizedBox(height: 15),
        //         Container(
        //           decoration: BoxDecoration(
        //             color: Colors.blueGrey,
        //               borderRadius: BorderRadius.circular(30)
        //           ),
        //           child:ListTile(leading:CircleAvatar(
        //             backgroundImage: AssetImage("asset/humaun.jpg"),
        //             maxRadius: 15,
        //             minRadius: 8,
        //           ),
        //             title: Text("AL-FAYEJ ",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),),),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 15,right: 15),
                child: Container(
                  height: 40,
                  child: TextField(
                    controller:_searchControllar,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      contentPadding: EdgeInsets.only(top: 10,left: 20),
                      filled: true,
                      // fillColor: Theme.of(context).cardColor,
                      fillColor: Colors.grey.withOpacity(.15),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:BorderSide(color:Colors.white24)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:BorderSide(
                              color: Colors.white24,
                              width: 1
                          )
                      ),
                      prefixIcon: Icon(Icons.search,color:Colors.blueGrey,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 1,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: datalist.length,
                            itemBuilder: (context,index){

                            return  Stack(
                              children: [
                            CircleAvatar(
                            backgroundImage: AssetImage(datalist[index]),
                              maxRadius: 35,
                              minRadius: 18,
                              ),
                                Positioned(
                                  left: 43,
                                    top: 35,
                                    child: Container(
                                      width: 15,
                                      height: 15,

                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                  decoration: BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                      ),
                                    ))
                              ],
                            );

                            //   Container(
                            //   height: 30,
                            //   width: 30,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(100),
                            //     image: DecorationImage(image: AssetImage(datalist[index]),fit: BoxFit.fill)
                            //   ),
                            // );
                            }),
                      ),
                      
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15,top:10),
                child: Text("Messages",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white60.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:ListTile(
                    leading:CircleAvatar(
                    backgroundImage: AssetImage("asset/humaun.jpg"),
                    maxRadius: 22,
                    minRadius: 10,
                  ),
                    title: Text("AL-FAYEJ ",style: TextStyle(fontSize: 14,
                        fontWeight:FontWeight.bold,
                        color: Colors.black54),),
                  subtitle: Text("Developer ",style: TextStyle(fontSize: 12,
                      fontWeight:FontWeight.bold,
                      color: Colors.black54),),),
                ),
              )


            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MessageScreen()));
            },
        backgroundColor: Colors.pink,
        child: Icon(Icons.message),),
      ),
    );

  }
}
