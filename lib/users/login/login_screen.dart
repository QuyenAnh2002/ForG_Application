import 'package:f0/users/home_user/HomePage.dart';
import 'package:f0/users/login/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();


}

class _LoginScreenState extends State<LoginScreen>{
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;


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


                        //header
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width,
                        //   height: 100,
                        //   child: Image.asset(
                        //     'images/logo.png',
                        //   ),
                        // ),

                        //login screen form
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
                                        controller: emailController,
                                        validator: (val) => val == "" ? "Email" : null,
                                        decoration: InputDecoration(
                                            // labelText: 'UserName',
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.black,
                                          ),
                                            hintText: "Email",
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
                                      Obx(
                                      () => TextFormField(
                                        controller: passwordController,


                                        validator: (val) => val == "" ? "Password" : null,
                                        obscureText: isObsecure.value,
                                        decoration: InputDecoration(

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
                                            prefixIcon: const Icon(
                                              Icons.lock,
                                              color: Colors.black,
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

                                      //button
                                      Material(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30),
                                        child: InkWell(
                                          onTap: (){
                                            Get.to(HomePage());

                                          },
                                          borderRadius: BorderRadius.circular(30),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 100,

                                            ),
                                            child: Text(
                                              "Login",
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
                                          "Don't have an Account? "  ),
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pushNamed(context, "/SignUpScreen");

                                          },

                                          child: const Text(
                                              "Sign Up"))
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