
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

import 'main.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class SignUpWidget extends StatefulWidget {
  final Function() onClickedSignIn;
  const SignUpWidget({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {

  final formKey = GlobalKey<FormState>();
  bool obscure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){

    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width*0.01),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.13),

            TextFormField(
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  labelText: 'Email',
                labelStyle: TextStyle(
                  fontFamily: 'nunito'
                ),
                  ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email) =>
              email != null && !EmailValidator.validate(email)
                  ? 'Enter a valid email'
                  : null,

            ),
            SizedBox(height: size.height*0.04),
            TextFormField(
              controller: passwordController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              obscureText: obscure,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontFamily: 'nunito'),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  child:
                  Icon(
                    obscure ? Icons.visibility_off : Icons.visibility,color: Colors.white,),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length<6
                  ? 'Enter 6 char'
                  : null,
            ),
            SizedBox(height: size.height*0.04),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.height*0.2,size.width*0.05),
                primary: Color(0xFF73aafa),
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: signUp,
              icon: Icon(Icons.arrow_forward, size: size.height*0.05,),
              label: Text(
                'SignUp',
                style: TextStyle(fontSize: size.width*0.025,fontFamily: 'nunito'),
              ),
            ),
            SizedBox(height: size.height*0.02),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: size.width*0.02,),
                  text: 'Already have an Account? ',
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickedSignIn,
                        text: 'Log In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme
                              .of(context)
                              .colorScheme
                              .secondary,
                        )
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future signUp() async{

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e);

      Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);

  }
}
