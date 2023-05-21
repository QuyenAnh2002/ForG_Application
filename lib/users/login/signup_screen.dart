import 'dart:convert';

import 'package:f0/config/config.dart';
import 'package:f0/users/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:f0/users/model/users.dart';
import 'package:firebase_core/firebase_core.dart';


class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();


}

class _SignUpScreenState extends State<SignUpScreen>{
  var formKey = GlobalKey<FormState>();
  var usernameController1 = TextEditingController();
  var passwordController = TextEditingController();
  var repasswordController = TextEditingController();
  var isObsecure = true.obs;

  checkusername() async
  {
   // try {
      final url = "http://192.168.1.45/clothes_app/Users/signup.php";
        final response = await http.post(
          Uri.parse(url),
          body: {
            'username': usernameController1.text,
            'password_acc': passwordController.text,
          },
        );
        if (response.statusCode == 200) {
          var resBodyOfcheckusername = jsonDecode(response.body);
              if (resBodyOfcheckusername['nameFound'] == true) {
                  Fluttertoast.showToast(msg: "Ten da duoc su dung");
                }
              else{
                Navigator.pushNamed(context, "/HomePage");

              }
        } else {
          // Đăng ký không thành công
          print('Registration failed');
        }


  //   catch (e)
  //   {
  //     print('Error: $e');
  //   }
 }
  //
  // SignUpandSave() async{
  //     User userModel = User(
  //       1,
  //       usernameController1.text.trim(),
  //       passwordController.text.trim(),
  //   );
  //     try{
  //       var res = await http.post(
  //         Uri.parse(config.signUp),
  //         body: userModel.toJson(),
  //       );
  //       if(res.statusCode == 200)
  //       {
  //         var resBodySignUp = jsonDecode(res.body);
  //         if (resBodySignUp['success'] == true){
  //           Fluttertoast.showToast(msg: "SignUp Succesfully");
  //         }
  //         else{
  //           Fluttertoast.showToast(msg: "Fail. Try Again");
  //         }
  //
  //       }
  //     }
  //
  //     catch(e){
  //       print(e.toString());
  //       Fluttertoast.showToast(msg: e.toString());
  //     }
  //
  //
  //   }
  // // Future<void> _register() async{
  // //   final url = "http://192.168.1.45/clothes_app/Users/signup.php";
  // //   final response = await http.post(
  // //     Uri.parse(url),
  // //     body: {
  // //       'username': usernameController1.text,
  // //       'password_acc': passwordController.text,
  // //     },
  // //   );
  // //   if (response.statusCode == 200) {
  // //     var resBodyOfcheckusername = jsonDecode(response.body);
  // //         if (resBodyOfcheckusername['nameFound'] == true) {
  // //             Fluttertoast.showToast(msg: "Ten da duoc su dung");
  // //           }
  // //         else{
  // //           Navigator.pushNamed(context, "/HomePage");
  // //
  // //         }
  // //   } else {
  // //     // Đăng ký không thành công
  // //     print('Registration failed');
  // //   }
  // //
  // // }
  //


  @override
  Widget build(BuildContext context){
    return Scaffold(

      //backgroundColor: Colors.black,
      body: LayoutBuilder(

        builder: (context, cons){
          return ConstrainedBox(constraints: BoxConstraints(
            maxHeight: cons.maxHeight,

          ),

            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/imglogin/bgr1.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                ),
              ),
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Center(
                                child: Row(

                                  children: [
                                    Image.asset('images/logo.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    SizedBox(height: 26),
                                    Text("FOR G",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.right,
                                    )
                                  ],
                                )
                            )
                        ),



                        //sign screen form
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,200,0,200),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(60)
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 30, 30, 16),
                              child: Column(
                                children: [
                                  Form(key: formKey,
                                    child: Column(
                                      children: [

                                        //usernme
                                        TextFormField(
                                          controller: usernameController1,
                                          validator: (val) => val == "" ? "Username" : null,
                                          decoration: InputDecoration(

                                              prefixIcon: Icon(
                                                Icons.person,
                                                color: Colors.black,
                                              ),
                                              hintText: "Username ",
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: Colors.white24,
                                                  )
                                              )
                                          ),
                                        ),
                                        const SizedBox(height: 18,),

                                        //password
                                        Obx(() => TextFormField(
                                          controller: passwordController,
                                          obscureText: isObsecure.value,
                                          validator: (val) => val == "" ? "Password" : null,
                                          decoration: InputDecoration(
                                            // labelText: 'UserName',

                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.black,
                                              ),
                                              suffixIcon: Obx(
                                                      () => GestureDetector(
                                                    onTap: (){
                                                      isObsecure.value = !isObsecure.value;
                                                    },
                                                    child: Icon(
                                                      isObsecure.value ? Icons.visibility_off : Icons.visibility,
                                                      color: Colors.black,
                                                    ),
                                                  )

                                              ),

                                              hintText: "Password",
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: Colors.white24,
                                                  )
                                              )
                                          ),

                                        )
                                        ),
                                        const SizedBox(height: 18,),

                                        //Confirm Password
                                        Obx(() => TextFormField(
                                          controller: repasswordController,
                                          obscureText: isObsecure.value,
                                          validator: (val) => val == "" ? "Confirm Password" : null,
                                          decoration: InputDecoration(
                                            // labelText: 'UserName',

                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.black,
                                              ),
                                              suffixIcon: Obx(
                                                      () => GestureDetector(
                                                    onTap: (){
                                                      isObsecure.value = !isObsecure.value;
                                                    },
                                                    child: Icon(
                                                      isObsecure.value ? Icons.visibility_off : Icons.visibility,
                                                      color: Colors.black,
                                                    ),
                                                  )

                                              ),

                                              hintText: "Confirm Password",
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: Colors.white24,
                                                  )
                                              )
                                          ),
                                        )
                                        ),

                                        const SizedBox(height: 18,),

                                        //button
                                        Material(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(30),
                                          child: InkWell(
                                            onTap: (){
                                              //checkusername();
                                                },
                                            borderRadius: BorderRadius.circular(30),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 100,

                                              ),
                                              child: Text(
                                                "Sign Up",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),

                                          ),
                                        )
                                      ],
                                    ),),

                                  const SizedBox(height: 16,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      const Text(
                                          "Already have an Account? "  ),
                                      TextButton(
                                          onPressed: (){
                                            Get.to(LoginScreen());


                                          },

                                          child: const Text(
                                              "Login"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}