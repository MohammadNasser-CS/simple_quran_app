import 'package:flutter/material.dart';
import 'package:quran_app/generated/l10n.dart';

class SignupFormCard extends StatefulWidget {
  const SignupFormCard({super.key});

  @override
  State<SignupFormCard> createState() => _SignupFormCardState();
}

class _SignupFormCardState extends State<SignupFormCard> {
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
              S.of(context).sign_up,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field Required";
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                hintText: S.of(context).userName,
                hintStyle: const TextStyle(fontSize: 18),
                labelText: S.of(context).userName,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field Required";
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                hintText: S.of(context).email,
                hintStyle: const TextStyle(fontSize: 18),
                labelText: S.of(context).email,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field Required";
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
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field Required";
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                errorStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                hintText: S.of(context).confirm_password,
                hintStyle: const TextStyle(fontSize: 18),
                labelText: S.of(context).confirm_password,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
