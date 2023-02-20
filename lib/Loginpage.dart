import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);
  void main() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Loginpage(),
        ),
      ),
    );
  }

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //final myController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool isEmailValid(String email) {
    // Use a regular expression to validate the email address
    final emailRegExp = RegExp('bilawal');
    return emailRegExp.hasMatch(email);
  }
  bool isPasswordvalid(String password) {
    // Use a regular expression to validate the email address
    final passwordRegExp = RegExp('bilawal');
    return passwordRegExp.hasMatch(password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,

          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login.png'),
              fit: BoxFit.cover
            )

          ),

          child: Form(
            key: _formKey,
            child: Column(

                children: [
                  SizedBox(height: 200,),
                  Container(
                    height: 50,
                    //width: 60,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.white,
                    child: TextFormField(
                      //controller: TextEditingController(),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Textfield is empty';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      //validator: (value) {
                        //if (value==null) {
                          //return 'Please enter an email address';
                        //} else if (!isEmailValid(value)) {
                          //return 'Please enter a valid email address';
                        //}
                        //return null;
                      //},


                      onChanged: (value){
                        _formKey.currentState!.validate();
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.black)
                      ),



                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    //width: 60,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.white,
                    child: TextFormField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value==null) {
                          return 'Please enter an password';
                        } else if (!isEmailValid(value)) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },

                      onChanged: (value){
                        _formKey.currentState!.validate();
                      },
                      obscureText:  _isObscure ,


                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                  _isObscure ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),


                          border: OutlineInputBorder(

                              borderSide: BorderSide(color: Colors.yellowAccent)),
                          hintText: 'password',
                          hintStyle: TextStyle(color: Colors.black)
                      ),



                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    //width: 60,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.white,
                    child: TextFormField(

                      decoration: InputDecoration(

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellowAccent)),
                          hintText: 'phone number',
                          hintStyle: TextStyle(color: Colors.black)
                      ),



                    ),
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: () {
                      //Navigator.push(
                        //context,
                       // MaterialPageRoute(builder: (context) => SecondPage()),
                     // );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shadowColor: Colors.black,
                    ),
                  ),
              ],
            ),
          ),

        )

    );
  }
}
//String email = emailController.text;
//String password = passwordController.text;

// Check if the email and password are correct
//if (email == 'example@example.com' && password == 'password123') {
// Navigate to the next page
//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) => NextPage()),
//);
//} else {
// Show an error message if the email or password is incorrect
//showDialog(
//context: context,
//builder: (BuildContext context) {
//return AlertDialog(
//title: Text('Error'),
//content: Text('Incorrect email or password'),
//actions: [
//TextButton(
//onPressed: () {
//Navigator.of(context).pop();
//},
//child: Text('OK'),
//),
//],
//);
//},
//);
//}