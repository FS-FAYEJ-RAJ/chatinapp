import 'package:chetingapp/screen/message_Screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchControllar=TextEditingController();

  var datalist=[
    "asset/humaun.jpg",
    "asset/humaun.jpg",
    "asset/humaun.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       actions: [
         Padding(
           padding: const EdgeInsets.only(top: 5,right: 15),
           child: CircleAvatar(
             backgroundImage: AssetImage("asset/humaun.jpg"),
             maxRadius: 20,
             minRadius: 10,
           ),
         ),
       ],
       backgroundColor:Colors.white,
       elevation: 0,
       iconTheme: IconThemeData(
         color: Colors.black54
       ),
     ),
      drawer: Drawer(
        backgroundColor: Colors.white24,
        child: Container(
          child:Column(
            children: [
             Container(
               height: 200,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.deepPurple
               ),
               child: Center(
                 child: Column(
                   children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 40),
                         child: CircleAvatar(
                          backgroundImage: AssetImage("asset/humaun.jpg"),
                           maxRadius: 36,
                           minRadius: 12,
                         ),
                       ),
                     Text("AL-FAYEJ ",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),),
                     Text("fayej017fa@gmail.com",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),)
                   ],

                 ),
               ),
             ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:ListTile(leading:CircleAvatar(
                  backgroundImage: AssetImage("asset/humaun.jpg"),
                  maxRadius: 15,
                  minRadius: 8,
                ),
                  title: Text("AL-FAYEJ ",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),),),
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0,left: 10,right: 10),
            child: TextField(
              controller:_searchControllar,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                // fillColor: Theme.of(context).cardColor,
                fillColor: Colors.grey.withOpacity(.25),
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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: datalist.length,
                        itemBuilder: (context,index){

                        return  CircleAvatar(
                          backgroundImage: AssetImage(datalist[index]),
                          maxRadius: 35,
                          minRadius: 18,
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
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.20)
                    ),
                    child: Center(
                      child: Icon(Icons.camera_alt,size: 30,),
                    ),
                  )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,top: 20),
            child: Text("Messages",style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black54),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:ListTile(
                leading:CircleAvatar(
                backgroundImage: AssetImage("asset/humaun.jpg"),
                maxRadius: 22,
                minRadius: 10,
              ),
                title: Text("AL-FAYEJ ",style: TextStyle(fontSize: 17,
                    fontWeight:FontWeight.bold,
                    color: Colors.black54),),
              subtitle: Text("Developer ",style: TextStyle(fontSize: 13,
                  fontWeight:FontWeight.bold,
                  color: Colors.black54),),),
            ),
          )


        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MessageScreen()));
          },
      backgroundColor: Colors.pink,
      child: Icon(Icons.message),),
    );

  }
}
