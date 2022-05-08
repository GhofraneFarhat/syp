import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'forgot.dart';
import 'main.dart';
import 'tuto.dart';
import 'utils.dart';


class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginWidget({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override

  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(

      padding:  EdgeInsets.all(size.width*0.01),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: size.height*0.1),
            TextFormField(
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontFamily: 'nunito'),
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
              textInputAction: TextInputAction.done,
              obscureText: obscureText,
              decoration:  InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontFamily: 'nunito',
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child:
                  Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,color: Colors.white,),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length<6
                  ? 'Enter 6 char'
                  : null,
            ),
            SizedBox(height: size.height*0.04),
            GestureDetector(
              child: Padding(
                padding:  EdgeInsets.only(left: size.width*0.75),
                child: Container(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: size.width*0.02,
                    ),
                  ),
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>  ForgotPasswordPage(),
              )),
            ),
            SizedBox(height: size.height*0.02),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize:  Size(size.height*0.2,size.width*0.05),
                primary: Color(0xFF73aafa),
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

              ),
              onPressed: signIn,
              icon:  Icon(Icons.lock_open,size: size.height*0.05),
              label:  Text(
                'Login',
                style:  TextStyle(
                    fontSize: size.width*0.025,
                    fontFamily: 'nunito',
                    fontWeight: FontWeight.bold,

                ),
              ),
            ),
            SizedBox(height: size.height*0.013,),

            RichText(
              text: TextSpan(
                  style:  TextStyle(color: Colors.black, fontSize: size.width*0.02,),
                  text: 'No account? ',
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickedSignUp,
                        text: 'Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.secondary,
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
  Future signIn() async{
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child:  CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e);

      Utils.showSnackBar(e.message);
    }
    // Navigator.of(context) not working !
    navigatorKey.currentState!.popUntil((route) => route.isFirst);

  }
}
