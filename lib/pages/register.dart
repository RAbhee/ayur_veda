import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  void _registerUser(String name, String email, String password, String PhoneNumber) {
    print('Name: $name');
    print('Email: $email');
    print('Password: $password');
    print('PhoneNumber : $PhoneNumber');
  }
  void _login (BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bbggg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topCenter,
                child: Padding(padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/background/logooo.png'),
                          height: 150,width: 150,),
                      ],
                    )
                ),
              ),
              Text('Register',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Names',
                  hintText: 'Enter your names',suffixIcon: Icon(Icons.person),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',suffixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.visiblePassword,),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',suffixIcon: Icon(Icons.phone_android),
                  hintText: 'Enter your Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  _registerUser('name', 'email', 'password', 'PhoneNumber'
                  );
                },
                child: Text('Register'),
              ),
              TextButton(
                onPressed: () => _login(context),
                child: Text('Already Registered?',
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 15),),),
            ]
        ),
      ),
    );
  }
}