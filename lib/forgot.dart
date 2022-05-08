import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'utils.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text (
          'Reset Password',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:  Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(size.width*0.01),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height*0.01,),
                    Text(
                      'Enter Your Email to Get your Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: size.width*0.035,fontFamily: 'tech'),
                    ),
                    SizedBox(height:  size.height*0.13),
                    TextFormField(
                      controller: emailController,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontFamily: 'nunito'),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,

                    ),
                    SizedBox(height: size.height*0.02),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.height*0.2,size.width*0.05),
                        primary: Color(0xFF73aafa),
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: resetPassword,
                      icon: Icon(Icons.email_outlined, size:size.height*0.05),
                      label: Text(
                        'Reset Password',
                        style: TextStyle(
                          fontSize: size.width*0.021,
                          fontFamily: 'nunito',
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.013),


                  ],
                ),
              ),

            ),
          ],
        ),

      ),
    );

  }
  Future resetPassword() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showSnackBar('Password Reset Email Sent');
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e);

      Utils.showSnackBar(e.message);
      Navigator.of(context).pop();
    }
  }
}
