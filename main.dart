import 'package:flutter/material.dart';
import 'package:test_1/welcomescreen.dart';

void main() {
  runApp(const LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get formKey => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Integration testing',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Center(child: Text('Login Screen')),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Login',
              style:TextStyle(
                fontSize:40,
                color: Colors.green,
                fontWeight: FontWeight.bold
              )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),onChanged:(String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Email':null;
                        },
                ),
                    ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(obscureText:true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),onChanged:(String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Password':null;
                        },
                  ),
                ), 
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: (){
                      if(formKey.currentState.validate()){
                        Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
                    }
                      },
                      
                    child: const Text('Login'),
                    color: Colors.green[500],
                    textColor:Colors.white,
                  )),
                
                ],
                )),
              )
            ],
          ),
        ),
    );
  }
}

