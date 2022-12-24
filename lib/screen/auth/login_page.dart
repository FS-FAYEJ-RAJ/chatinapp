
import 'package:chetingapp/screen/home_screen.dart';
import 'package:chetingapp/widged/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>with SingleTickerProviderStateMixin {
  bool islogin=true;
  Animation<double>? conteinarsize;
  AnimationController? animationController;
  Duration animationDuretion=Duration(microseconds: 250);

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();

    animationController=AnimationController(vsync: this,duration: animationDuretion);
  }
  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController namecontrollar=TextEditingController();
    TextEditingController emailcontrollar=TextEditingController();
    TextEditingController passwordcontrollar=TextEditingController();

    double viewInset = MediaQuery.of(context).viewInsets.bottom; // we are using this to determine Keyboard is opened or not
    var defaultLoginSize = size.height - (size.height * 0.2);
    var defaultRegisterSize = size.height - (size.height * 0.1);

    conteinarsize=Tween<double>(
        begin: size.height*0.1,end:
    defaultRegisterSize).animate(CurvedAnimation(parent:animationController!, curve: Curves.linear));

    return Scaffold(
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: islogin?0.0:0.3,
            duration: animationDuretion,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height*0.1,
                child: IconButton(onPressed: (){
                  animationController!.reverse();
                  setState(() {
                    islogin=!islogin;
                  });
                }, icon:Icon(Icons.close,color: Colors.pink,)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView
              (
              child: Container(
                width: double.infinity,
                height: defaultLoginSize,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("WelCame Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                      SizedBox(height:15),
                      SvgPicture.asset("asset/login.svg",height: 200,width: 200,),

                      TextFildWidged(name: "Email", icon:Icon(Icons.email,color: Color(0XFF6A62B7),),controller: namecontrollar,),

                      TextFildWidged(name: "password", icon:Icon(Icons.lock,color: Color(0XFF6A62B7),),controller: passwordcontrollar,),

                      InkWell(
                        onTap: (){
                         Get.to(HomeScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 65,right: 65),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.indigoAccent
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                              ),
                            ),
                          ),
                        ),
                      ),





                    ],
                  ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: animationController!,
            builder: (context,child)
            {
             if(viewInset==0 && islogin){
               return defouldRegister();
             }
             else if(!islogin)
                 {
                   return defouldRegister();
                 }
             return Container();
            },

          ),
          Visibility(
            visible: !islogin,
            child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  width: size.width,
                  height: defaultLoginSize,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("WelCame",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height:15),
                      SvgPicture.asset("asset/register.svg",height: 150,width: 150,),
                      TextFildWidged(name: "Name", icon:Icon(Icons.person,color: Color(0XFF6A62B7),),controller: namecontrollar,),
                      TextFildWidged(name: "Email", icon:Icon(Icons.email,color: Color(0XFF6A62B7),),controller: emailcontrollar,),
                      TextFildWidged(name: "password", icon:Icon(Icons.lock,color: Color(0XFF6A62B7),),controller: passwordcontrollar,),

                      InkWell(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 65,right: 65),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.indigoAccent
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text("SingUp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                              ),
                            ),
                          ),
                        ),
                      ),],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      
    );
  }

  Widget defouldRegister(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height:conteinarsize!.value,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight:Radius.circular(100),
                topLeft: Radius.circular(100)
            ),
            color: Color(0XFFE5E5E5),
          ),
          alignment: Alignment.center,
          child: GestureDetector(onTap: (){
            animationController!.forward();
            setState(() {
              islogin=!islogin;
            });},
              child:islogin? Text("New User ? Register",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0XFF6A62B7) ) ,):null
          ),
        ),
      ),
    );
  }
}

