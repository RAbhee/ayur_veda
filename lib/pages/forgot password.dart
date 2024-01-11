

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotpasswordPage extends StatelessWidget {
  const ForgotpasswordPage({super.key});
  void _forgotpassword(String name, String Phonenumber, ) {
    print('Name: $name');
    print('Phonenumber: $Phonenumber');
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/background/logooo.png'),
                        height: 150,width: 150,),
                    ],
                  )
              ),
              Text('Forgot Password',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),),
              SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' Names',
                    hintText: 'Enter your names'
                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  _forgotpassword('name', 'Phonenumber'
                  );
                },
                child: const Text('Send Otp'),
              ),
            ]
        ),


      ),
    );
  }
}