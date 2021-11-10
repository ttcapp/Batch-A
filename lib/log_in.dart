import 'package:flutter/material.dart';
import 'package:new_batch_a/main.dart';

String _email="suha@gmail.com";
String _password="1234";
final _key=GlobalKey<FormState>();
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                validator: (text){
                  if(text== null || text.isEmpty)
                    {
                      return "Field is empty";
                    }
                  else if(text!= _email){
                    return "Please enter correct email";
                  }
                },
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple
                    ),
                    borderRadius: BorderRadius.
                    circular(7),
                  )
                ),
              ),
              SizedBox(height: 25,),
              TextFormField(
                validator: (text){
                  if(text== null || text.isEmpty)
                  {
                    return "Field is empty";
                  }
                  else if(text!= _password){
                    return "Please enter correct password";
                  }
                },
                obscureText: true,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.purple
                      ),
                      borderRadius: BorderRadius.
                      circular(7),
                    )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_key.currentState!.validate()){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>
                                  MyHomePage()));
                    }
                  },
                  child: Text("Log In")
              )

            ],
          ),
        ),
      ),
    );
  }
}
