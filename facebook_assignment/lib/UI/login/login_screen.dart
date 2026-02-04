import 'package:facebook/UI/MyColors/my_colors.dart';
import 'package:facebook/UI/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSecure = true;
  bool emailValid = true;
  String passwordValid = "";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 70,
                    children: [
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images/facebookLogo.png",
                        width: size.width * 0.2,
                      ),
                      Column(
                        spacing: 40,
                        children: [
                          Column(
                            spacing: 25,
                            children: [
                              TextField(
                                controller: emailController,
                                cursorColor: MyColors.blue,
                                decoration: InputDecoration(
                                  hintText: "Mobile Number or Email Address",
                                  hintStyle: TextStyle(color: MyColors.grey),
                                  filled: true,
                                  fillColor: MyColors.lightGrey,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.blue,
                                      width: 2,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.all(16),
                                  errorText: !emailValid
                                      ? "Invalid Email"
                                      : null,
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.red,
                                      width: 2,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.red,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: passwordController,
                                cursorColor: MyColors.blue,
                                obscureText: isSecure,
                                obscuringCharacter: '*',
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: MyColors.grey),
                                  filled: true,
                                  fillColor: MyColors.lightGrey,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.blue,
                                      width: 2,
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isSecure = !isSecure;
                                      });
                                    },
                                    icon: Icon(
                                      isSecure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: MyColors.grey,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.all(16),
                                  errorText: passwordValid.isNotEmpty
                                      ? validatePassword()
                                      : null,
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.red,
                                      width: 2,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: MyColors.red,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: FilledButton(
                                  onPressed: () {
                                    emailValid = validateEmail();
                                    passwordValid = validatePassword();
                                    setState(() {});
                                    if (emailValid && passwordValid.isEmpty) {
                                      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                                    }
                                  },
                                  style: FilledButton.styleFrom(
                                    backgroundColor: MyColors.blue,
                                    foregroundColor: MyColors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgotten Password ?",
                                  style: TextStyle(
                                    color: MyColors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 16,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: MyColors.blue,
                            side: BorderSide(color: MyColors.blue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/metaLogo.png",
                        width: size.width * 0.25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool validateEmail() {
    return RegExp(
      r'^^[A-Za-z][\w\d]*@[A-Za-z]{2,3}(\.[A-Za-z]{2,3})+$',
    ).hasMatch(emailController.text);
  }

  String validatePassword() {
    if (passwordController.text.length < 8) {
      return "Password should contain at least 8 characters";
    } else if (!RegExp(r"[A-Z]").hasMatch(passwordController.text)) {
      return "Password should contain at least one upper case character";
    } else if (!RegExp(r"\d").hasMatch(passwordController.text)) {
      return "Password should contain at least one number";
    } else if (RegExp(r'^[a-zA-Z0-9]+$').hasMatch(passwordController.text)) {
      return "Password should contain at least one special character";
    } else {
      return "";
    }
  }
}
