import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/form_card_button.dart';
import 'package:quran_app/features/auth/login/widgets/login_form_card.dart';
import 'package:quran_app/features/auth/signup/signup_page.dart';
import 'package:quran_app/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.sizeOf(context).width * 0.4,
                  ),
                  const SizedBox(height: 24.0),
                  const LoginFormCard(),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FormCardButton(
                      title: S.of(context).login,
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          debugPrint('Data Correct');
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).newUser,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                        },
                        child: Text(
                          S.of(context).sign_up,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
