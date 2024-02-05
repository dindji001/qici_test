import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/subscribe/subscribe-page.dart';
import 'package:qici/view/widgets/button.dart';

class VerifyPhoneOtp extends StatefulWidget {
  const VerifyPhoneOtp({super.key});

  @override
  State<VerifyPhoneOtp> createState() => _VerifyPhoneOtpState();
}

class _VerifyPhoneOtpState extends State<VerifyPhoneOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppTheme.color.textColor, // <-- SEE HERE
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: width(context) * 0.3,
              width: width(context) * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppTheme.asset.logo2),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: width(context) * 0.8,
              child: Text(
                "Veuillez saisir le code envoyé par sms au +225 05 0* ** ** 19",
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _textFieldOTP(first: true, last: false),
                  SizedBox(
                    width: 5,
                  ),
                  _textFieldOTP(first: false, last: false),
                  SizedBox(
                    width: 5,
                  ),
                  _textFieldOTP(first: false, last: false),
                  SizedBox(
                    width: 5,
                  ),
                  _textFieldOTP(first: false, last: true),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CButton(
              title: "Suivant",
              onPressed: () {
                routeAnimation(context, const SubcribePage());
              },
            ),
            SizedBox(
              height: 15,
            ),
            CButton(
                title: "Envoyer un autre code 00:24",
                onPressed: () {},
                sizeTitle: 14,
                color: AppTheme.color.secondaryColor,
                titleColor: AppTheme.color.primaryColor),
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 80,
      width: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: AppTheme.color.primaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
