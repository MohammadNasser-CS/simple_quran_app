import 'package:flutter/material.dart';
import 'package:quran_app/generated/l10n.dart';

class LoginFormCard extends StatefulWidget {
  const LoginFormCard({super.key});

  @override
  State<LoginFormCard> createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).sign_in,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "This Field Is Required";
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                hintText: S.of(context).userName_email,
                hintStyle: const TextStyle(fontSize: 18),
                labelText: S.of(context).userName_email,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "This Field Is Required";
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                errorStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                hintText: S.of(context).password,
                hintStyle: const TextStyle(fontSize: 18),
                labelText: S.of(context).password,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 12.0),
            TextButton(
              onPressed: () {},
              child: Text(
                S.of(context).forgetPassword,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
