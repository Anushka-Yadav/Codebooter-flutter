import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:codebooter_study_app/Client/authentication/auth_service.dart';

import '../../utils/Dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();

  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final GitHubSignIn _gitHubSignIn =GitHubSignIn()
  // Future<void> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser!.authentication;

  //     // Use these details to authenticate with Firebase
  //     final OAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     // Sign in to Firebase using the Google credentials
  //     await FirebaseAuth.instance.signInWithCredential(credential);

  //     // Navigate to the home page
  //     context.go('/homepage');
  //   } catch (error) {
  //     // Handle sign-in error
  //     print(error);
  //   }
  // }

  //sign out
  // Future<void> signOut() async {
  //   try {
  //     await FirebaseAuth.instance.signOut();
  //     await _authService..signOut();

  //     // Navigate to the login page or any other page
  //     context.go('/login');
  //   } catch (error) {
  //     // Handle sign-out error
  //     print(error);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: Padding(
        padding: EdgeInsets.only(
            top: dimension.val50,
            left: dimension.val50,
            right: dimension.val50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: dimension.val70,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: dimension.val60,
                    height: dimension.val60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: dimension.val25),
                  const Text(
                    'Welcome to CodeBooter 👋 🚀',
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: dimension.val15,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: TextStyle(
                        color: const Color.fromARGB(255, 53, 53, 53),
                        fontFamily: 'Poppins',
                        fontSize: dimension.font16,
                        fontWeight: FontWeight.w400,
                      ),
                      children: const [
                        TextSpan(text: 'Help you to '),
                        TextSpan(
                          text: 'Learn, Prepare',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Ace',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' your interviews. 🎯 💯'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: dimension.val40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(const Duration(milliseconds: 2000), () {
                        AuthService().signInWithGoogle(context);
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        _authService.signInWithGoogle(context).then((value) {
                          // print user name
                          // print(value!.displayName);

                          AuthService().signInWithGoogle(context);
                        });
                      },
                      child: Container(
                        width: dimension.width311,
                        height: dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 212, 211, 211),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Image.asset(
                              'assets/images/google.png',
                              width: dimension.val20,
                              height: dimension.val20,
                            ),
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 53, 53, 53),
                                fontFamily: 'Poppins',
                                fontSize: dimension.font14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: dimension.val15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(const Duration(milliseconds: 2000), () {
                        AuthService().signInWithGitHub(context);
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        _authService.signInWithGitHub(context).then((value) {
                          // print user name
                          // print(value!.displayName);
                          // _authService.signInWithGitHub(context);
                          context.go('/homepage');
                        });
                      },
                      child: Container(
                        width: dimension.width311,
                        height: dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 212, 211, 211),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Image.asset(
                              'assets/images/github.png',
                              width: dimension.val20,
                              height: dimension.val20,
                            ),
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Text(
                              'Continue with GitHub',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 53, 53, 53),
                                fontFamily: 'Poppins',
                                fontSize: dimension.font14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: dimension.val15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(const Duration(milliseconds: 2000), () {
                        context.go('/admin/home');
                      });
                    },
                    child: Text("Are you a admin? Login here",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 53, 53, 53),
                          fontFamily: 'Poppins',
                          fontSize: dimension.font12,
                          fontWeight: FontWeight.w400,
                          //height between underline and text

                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 3, 3, 3),
                          decorationStyle: TextDecorationStyle.solid,
                        )),
                  ),
                  SizedBox(
                    height: dimension.height85,
                  ),
                  Text(
                    'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 107, 106, 106),
                      fontFamily: 'calibri',
                      fontSize: dimension.val10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: dimension.val70,
                  ),
                  smallText(
                    text: '©  2023 CodeBooter. All rights reserved.',
                    size: dimension.font12,
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
