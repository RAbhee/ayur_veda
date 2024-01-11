import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ayur_veda/pages/forgot password.dart';

import 'forgot password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    void _login () {
      print("Login");
    }

    void _forgotPassword (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ForgotpasswordPage()),
      );
    }



    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bbggg.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/background/logooo.png'),
                        height: 150,width: 150,),
                    ],
                  )
              ),
              Text('Login Page',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),),
              SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as'
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueGrey,
                  shadowColor: Colors.red,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                  ),
                  minimumSize: const Size(150, 50),
                ),
                child: const Text('Login'),
              ),

              TextButton(
                onPressed: () => _forgotPassword(context),
                child: const Text('Forgot Password?',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,fontSize: 15),),),
            ],

          ),
        ),
      ),
    );

  }
}