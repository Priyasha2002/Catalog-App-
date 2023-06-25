import 'package:flutter/material.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/hey.png",
            fit: BoxFit.cover,),

            Text("Welcome to Quest Flamingos $name",style:TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16.0 , horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",

                    ),

                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      else if (value.length < 6) {
                        return 'Password length should be atleast 6';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",


                    ),
                  ),
                  SizedBox(height: 30.0,),

                  Material(
                    color: Colors.deepPurple,
                    // shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton?50: 8),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          changeButton = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                      width: changeButton? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      child:changeButton?Icon(Icons.done, color:  Colors.white,) :Text(
                        "Login", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    ),
                    ),
                  )
                  // ElevatedButton(
                  //     child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      )
      )
    );

  }
}

